package com.mob.tools;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.join.mgps.Util.o0;
import com.mob.tools.utils.ReflectHelper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class MobUIShell extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static HashMap<String, FakeActivity> f75479a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FakeActivity f75480b;

    static {
        MobLog.getInstance().d("===============================", new Object[0]);
        MobLog.getInstance().d("MobTools " + "2026-09-18".replace("-0", "-").replace("-", o0.f49827a), new Object[0]);
        MobLog.getInstance().d("===============================", new Object[0]);
    }

    protected static String a(Object obj) {
        return a(String.valueOf(System.currentTimeMillis()), obj);
    }

    private boolean b() {
        if (this.f75480b == null) {
            Intent intent = getIntent();
            Uri data = intent.getData();
            if (data != null && "mobui".equals(data.getScheme())) {
                FakeActivity fakeActivityA = a(data.getHost());
                this.f75480b = fakeActivityA;
                if (fakeActivityA != null) {
                    MobLog.getInstance().i("MUIShell found executor: " + this.f75480b.getClass());
                    this.f75480b.setActivity(this);
                    return true;
                }
            }
            try {
                String stringExtra = intent.getStringExtra("launch_time");
                String stringExtra2 = intent.getStringExtra("executor_name");
                FakeActivity fakeActivityRemove = f75479a.remove(stringExtra);
                this.f75480b = fakeActivityRemove;
                if (fakeActivityRemove == null) {
                    FakeActivity fakeActivityRemove2 = f75479a.remove(intent.getScheme());
                    this.f75480b = fakeActivityRemove2;
                    if (fakeActivityRemove2 == null) {
                        FakeActivity fakeActivityA2 = a();
                        this.f75480b = fakeActivityA2;
                        if (fakeActivityA2 == null) {
                            MobLog.getInstance().w(new RuntimeException("Executor lost! launchTime = " + stringExtra + ", executorName: " + stringExtra2));
                            return false;
                        }
                    }
                }
                MobLog.getInstance().i("MUIShell found executor: " + this.f75480b.getClass());
                this.f75480b.setActivity(this);
            } catch (Throwable th) {
                MobLog.getInstance().w(th);
                return false;
            }
        }
        return true;
    }

    private boolean c() {
        if (Build.VERSION.SDK_INT > 27) {
            return false;
        }
        try {
            Field declaredField = Activity.class.getDeclaredField("mActivityInfo");
            declaredField.setAccessible(true);
            ((ActivityInfo) declaredField.get(this)).screenOrientation = -1;
            declaredField.setAccessible(false);
            return true;
        } catch (Exception e10) {
            MobLog.getInstance().w(e10, "Fix orientation for 8.0 encountered exception", new Object[0]);
            return false;
        }
    }

    private boolean d() {
        boolean z10 = false;
        if (Build.VERSION.SDK_INT > 27) {
            return false;
        }
        try {
            TypedArray typedArrayObtainStyledAttributes = this.f75480b.activity.obtainStyledAttributes((int[]) Class.forName("com.android.internal.R$styleable").getField("Window").get(null));
            Method method = ActivityInfo.class.getMethod("isTranslucentOrFloating", TypedArray.class);
            method.setAccessible(true);
            boolean zBooleanValue = ((Boolean) method.invoke(null, typedArrayObtainStyledAttributes)).booleanValue();
            try {
                method.setAccessible(false);
                return zBooleanValue;
            } catch (Exception e10) {
                e = e10;
                z10 = zBooleanValue;
                MobLog.getInstance().w(e);
                return z10;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    @Override // android.app.Activity
    public void finish() {
        FakeActivity fakeActivity = this.f75480b;
        if (fakeActivity == null || !fakeActivity.onFinish()) {
            super.finish();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        FakeActivity fakeActivity = this.f75480b;
        if (fakeActivity != null) {
            fakeActivity.onActivityResult(i10, i11, intent);
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        FakeActivity fakeActivity = this.f75480b;
        if (fakeActivity != null) {
            fakeActivity.onConfigurationChanged(configuration);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        if (!b()) {
            super.onCreate(bundle);
            finish();
            return;
        }
        MobLog.getInstance().d(this.f75480b.getClass().getSimpleName() + " onCreate", new Object[0]);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 == 26 && d()) {
            c();
        }
        this.f75480b.activity.getWindow().addFlags(Integer.MIN_VALUE);
        if (i10 < 35) {
            try {
                ReflectHelper.invokeInstanceMethod(this.f75480b.activity.getWindow(), "setStatusBarColor", new Object[]{0}, new Class[]{Integer.TYPE});
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
            }
        }
        super.onCreate(bundle);
        this.f75480b.onCreate();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        boolean zOnCreateOptionsMenu = super.onCreateOptionsMenu(menu);
        FakeActivity fakeActivity = this.f75480b;
        return fakeActivity != null ? fakeActivity.onCreateOptionsMenu(menu) : zOnCreateOptionsMenu;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        FakeActivity fakeActivity = this.f75480b;
        if (fakeActivity != null) {
            fakeActivity.sendResult();
            MobLog.getInstance().d(this.f75480b.getClass().getSimpleName() + " onDestroy", new Object[0]);
            this.f75480b.onDestroy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        try {
            FakeActivity fakeActivity = this.f75480b;
            if (fakeActivity != null ? fakeActivity.onKeyEvent(i10, keyEvent) : false) {
                return true;
            }
            return super.onKeyDown(i10, keyEvent);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return false;
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        try {
            FakeActivity fakeActivity = this.f75480b;
            if (fakeActivity != null ? fakeActivity.onKeyEvent(i10, keyEvent) : false) {
                return true;
            }
            return super.onKeyUp(i10, keyEvent);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return false;
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        FakeActivity fakeActivity = this.f75480b;
        if (fakeActivity == null) {
            super.onNewIntent(intent);
        } else {
            fakeActivity.onNewIntent(intent);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean zOnOptionsItemSelected = super.onOptionsItemSelected(menuItem);
        FakeActivity fakeActivity = this.f75480b;
        return fakeActivity != null ? fakeActivity.onOptionsItemSelected(menuItem) : zOnOptionsItemSelected;
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (this.f75480b != null) {
            MobLog.getInstance().d(this.f75480b.getClass().getSimpleName() + " onPause", new Object[0]);
            this.f75480b.onPause();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        FakeActivity fakeActivity = this.f75480b;
        if (fakeActivity != null) {
            fakeActivity.onRequestPermissionsResult(i10, strArr, iArr);
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        if (this.f75480b != null) {
            MobLog.getInstance().d(this.f75480b.getClass().getSimpleName() + " onRestart", new Object[0]);
            this.f75480b.onRestart();
        }
        super.onRestart();
    }

    @Override // android.app.Activity
    protected void onResume() {
        if (this.f75480b != null) {
            MobLog.getInstance().d(this.f75480b.getClass().getSimpleName() + " onResume", new Object[0]);
            this.f75480b.onResume();
        }
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onStart() {
        if (this.f75480b != null) {
            MobLog.getInstance().d(this.f75480b.getClass().getSimpleName() + " onStart", new Object[0]);
            this.f75480b.onStart();
        }
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        if (this.f75480b != null) {
            MobLog.getInstance().d(this.f75480b.getClass().getSimpleName() + " onStop", new Object[0]);
            this.f75480b.onStop();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public void setContentView(int i10) {
        setContentView(LayoutInflater.from(this).inflate(i10, (ViewGroup) null));
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i10) {
        if (Build.VERSION.SDK_INT == 26 && d()) {
            return;
        }
        super.setRequestedOrientation(i10);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i10) {
        if (b()) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            int i11 = 0;
            while (i11 < stackTrace.length) {
                if (stackTrace[i11].toString().startsWith("java.lang.Thread.getStackTrace") && (i11 = i11 + 2) < stackTrace.length) {
                    int iOnSetTheme = this.f75480b.onSetTheme(i10, stackTrace[i11].toString().startsWith("android.app.ActivityThread.performLaunchActivity"));
                    if (iOnSetTheme > 0) {
                        super.setTheme(iOnSetTheme);
                        return;
                    }
                    return;
                }
                i11++;
            }
        }
        super.setTheme(i10);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i10) {
        FakeActivity fakeActivity = this.f75480b;
        if (fakeActivity != null) {
            fakeActivity.beforeStartActivityForResult(intent, i10, null);
        }
        super.startActivityForResult(intent, i10);
    }

    protected static String a(String str, Object obj) {
        f75479a.put(str, (FakeActivity) obj);
        return str;
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        if (view == null) {
            return;
        }
        super.setContentView(view);
        FakeActivity fakeActivity = this.f75480b;
        if (fakeActivity != null) {
            fakeActivity.setContentView(view);
        }
    }

    private FakeActivity a(String str) {
        Object objNewInstance;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (str.startsWith(o0.f49827a)) {
                str = getPackageName() + str;
            }
            String strImportClass = ReflectHelper.importClass(str);
            if (TextUtils.isEmpty(strImportClass) || (objNewInstance = ReflectHelper.newInstance(strImportClass, new Object[0])) == null || !(objNewInstance instanceof FakeActivity)) {
                return null;
            }
            return (FakeActivity) objNewInstance;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i10, Bundle bundle) {
        FakeActivity fakeActivity = this.f75480b;
        if (fakeActivity != null) {
            fakeActivity.beforeStartActivityForResult(intent, i10, bundle);
        }
        super.startActivityForResult(intent, i10, bundle);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        if (view == null) {
            return;
        }
        if (layoutParams == null) {
            super.setContentView(view);
        } else {
            super.setContentView(view, layoutParams);
        }
        FakeActivity fakeActivity = this.f75480b;
        if (fakeActivity != null) {
            fakeActivity.setContentView(view);
        }
    }

    public FakeActivity a() {
        String string;
        try {
            string = getPackageManager().getActivityInfo(getComponentName(), 128).metaData.getString("defaultActivity");
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            string = null;
        }
        return a(string);
    }
}
