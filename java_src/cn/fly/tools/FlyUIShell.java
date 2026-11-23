package cn.fly.tools;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import cn.fly.commons.x;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.ReflectHelper;
import com.join.mgps.Util.o0;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class FlyUIShell extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static HashMap<String, FakeActivity> f1683a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FakeActivity f1684b;

    static {
        FlyLog.getInstance().d("===============================", new Object[0]);
        FlyLog.getInstance().d(x.b("009Cgbcjeeebcjcj?fEehhe") + "2026-09-18".replace("-0", "-").replace("-", o0.f49827a), new Object[0]);
        FlyLog.getInstance().d("===============================", new Object[0]);
    }

    protected static String a(Object obj) {
        return a(String.valueOf(System.currentTimeMillis()), obj);
    }

    private boolean b() {
        if (this.f1684b == null) {
            Intent intent = getIntent();
            Uri data = intent.getData();
            if (data != null && x.b("005[cecjeecfch").equals(data.getScheme())) {
                FakeActivity fakeActivityA = a(data.getHost());
                this.f1684b = fakeActivityA;
                if (fakeActivityA != null) {
                    FlyLog.getInstance().i("MUIShell found executor: " + this.f1684b.getClass());
                    this.f1684b.setActivity(this);
                    return true;
                }
            }
            try {
                String stringExtra = intent.getStringExtra(x.b("011fc=cfYdbgScgUh]chceDe"));
                String stringExtra2 = intent.getStringExtra(x.b("013e_dh2ebYcf:h7cjcicg=dc@ce+e"));
                FakeActivity fakeActivityRemove = f1683a.remove(stringExtra);
                this.f1684b = fakeActivityRemove;
                if (fakeActivityRemove == null) {
                    FakeActivity fakeActivityRemove2 = f1683a.remove(intent.getScheme());
                    this.f1684b = fakeActivityRemove2;
                    if (fakeActivityRemove2 == null) {
                        FakeActivity fakeActivityA2 = a();
                        this.f1684b = fakeActivityA2;
                        if (fakeActivityA2 == null) {
                            FlyLog.getInstance().w(new RuntimeException("Executor lost! launchTime = " + stringExtra + ", executorName: " + stringExtra2));
                            return false;
                        }
                    }
                }
                FlyLog.getInstance().i("MUIShell found executor: " + this.f1684b.getClass());
                this.f1684b.setActivity(this);
            } catch (Throwable th) {
                FlyLog.getInstance().w(th);
                return false;
            }
        }
        return true;
    }

    private boolean c() {
        if (DH.SyncMtd.getOSVersionIntForFly() > 27) {
            return false;
        }
        try {
            Field declaredField = Activity.class.getDeclaredField(x.b("013KceecPbh]chccch[h!dbddWd?decj"));
            declaredField.setAccessible(true);
            ((ActivityInfo) declaredField.get(this)).screenOrientation = -1;
            declaredField.setAccessible(false);
            return true;
        } catch (Exception e10) {
            FlyLog.getInstance().w(e10, "Fix orientation for 8.0 encountered exception", new Object[0]);
            return false;
        }
    }

    private boolean d() {
        boolean z10 = false;
        if (DH.SyncMtd.getOSVersionIntForFly() > 27) {
            return false;
        }
        try {
            TypedArray typedArrayObtainStyledAttributes = this.f1684b.activity.obtainStyledAttributes((int[]) Class.forName("com.android.internal.R$styleable").getField("Window").get(null));
            Method method = ActivityInfo.class.getMethod(x.b("023Ichehebci[cd1eh2fRcf^bedh@fgcifb-f9cjEchDchUd_di"), TypedArray.class);
            method.setAccessible(true);
            boolean zBooleanValue = ((Boolean) method.invoke(null, typedArrayObtainStyledAttributes)).booleanValue();
            try {
                method.setAccessible(false);
                return zBooleanValue;
            } catch (Exception e10) {
                e = e10;
                z10 = zBooleanValue;
                FlyLog.getInstance().w(e);
                return z10;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    @Override // android.app.Activity
    public void finish() {
        FakeActivity fakeActivity = this.f1684b;
        if (fakeActivity == null || !fakeActivity.onFinish()) {
            super.finish();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        FakeActivity fakeActivity = this.f1684b;
        if (fakeActivity != null) {
            fakeActivity.onActivityResult(i10, i11, intent);
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        FakeActivity fakeActivity = this.f1684b;
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
        FlyLog.getInstance().d(this.f1684b.getClass().getSimpleName() + " onCreate", new Object[0]);
        if (DH.SyncMtd.getOSVersionIntForFly() == 26 && d()) {
            c();
        }
        if (DH.SyncMtd.getOSVersionIntForFly() >= 21) {
            this.f1684b.activity.getWindow().addFlags(Integer.MIN_VALUE);
            if (DH.SyncMtd.getOSVersionIntForFly() < 35) {
                try {
                    ReflectHelper.invokeInstanceMethod(this.f1684b.activity.getWindow(), "setStatusBarColor", new Object[]{0}, new Class[]{Integer.TYPE});
                } catch (Throwable unused) {
                }
            }
        }
        super.onCreate(bundle);
        this.f1684b.onCreate();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        boolean zOnCreateOptionsMenu = super.onCreateOptionsMenu(menu);
        FakeActivity fakeActivity = this.f1684b;
        return fakeActivity != null ? fakeActivity.onCreateOptionsMenu(menu) : zOnCreateOptionsMenu;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        FakeActivity fakeActivity = this.f1684b;
        if (fakeActivity != null) {
            fakeActivity.sendResult();
            FlyLog.getInstance().d(this.f1684b.getClass().getSimpleName() + " onDestroy", new Object[0]);
            this.f1684b.onDestroy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        try {
            FakeActivity fakeActivity = this.f1684b;
            if (fakeActivity != null ? fakeActivity.onKeyEvent(i10, keyEvent) : false) {
                return true;
            }
            return super.onKeyDown(i10, keyEvent);
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return false;
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        try {
            FakeActivity fakeActivity = this.f1684b;
            if (fakeActivity != null ? fakeActivity.onKeyEvent(i10, keyEvent) : false) {
                return true;
            }
            return super.onKeyUp(i10, keyEvent);
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return false;
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        FakeActivity fakeActivity = this.f1684b;
        if (fakeActivity == null) {
            super.onNewIntent(intent);
        } else {
            fakeActivity.onNewIntent(intent);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean zOnOptionsItemSelected = super.onOptionsItemSelected(menuItem);
        FakeActivity fakeActivity = this.f1684b;
        return fakeActivity != null ? fakeActivity.onOptionsItemSelected(menuItem) : zOnOptionsItemSelected;
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (this.f1684b != null) {
            FlyLog.getInstance().d(this.f1684b.getClass().getSimpleName() + " onPause", new Object[0]);
            this.f1684b.onPause();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        FakeActivity fakeActivity = this.f1684b;
        if (fakeActivity != null) {
            fakeActivity.onRequestPermissionsResult(i10, strArr, iArr);
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        if (this.f1684b != null) {
            FlyLog.getInstance().d(this.f1684b.getClass().getSimpleName() + " onRestart", new Object[0]);
            this.f1684b.onRestart();
        }
        super.onRestart();
    }

    @Override // android.app.Activity
    protected void onResume() {
        if (this.f1684b != null) {
            FlyLog.getInstance().d(this.f1684b.getClass().getSimpleName() + " onResume", new Object[0]);
            this.f1684b.onResume();
        }
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onStart() {
        if (this.f1684b != null) {
            FlyLog.getInstance().d(this.f1684b.getClass().getSimpleName() + " onStart", new Object[0]);
            this.f1684b.onStart();
        }
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        if (this.f1684b != null) {
            FlyLog.getInstance().d(this.f1684b.getClass().getSimpleName() + " onStop", new Object[0]);
            this.f1684b.onStop();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public void setContentView(int i10) {
        setContentView(LayoutInflater.from(this).inflate(i10, (ViewGroup) null));
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i10) {
        if (DH.SyncMtd.getOSVersionIntForFly() == 26 && d()) {
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
                if (stackTrace[i11].toString().startsWith(x.b("0306gf1c=cc]c$ckSfcd0dickeb0g=ciDecGcbckdi3eh1dk8hcbJdgebciLcbe")) && (i11 = i11 + 2) < stackTrace.length) {
                    int iOnSetTheme = this.f1684b.onSetTheme(i10, stackTrace[i11].toString().startsWith(x.b("048cdGcbcicjchcbckOcii4ckec4bhVchccch<hOdbebGg8ciCecZcbckVieVcidecjciceedTcQcf[dbgXec1bh>chccch,hGdb")));
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
        FakeActivity fakeActivity = this.f1684b;
        if (fakeActivity != null) {
            fakeActivity.beforeStartActivityForResult(intent, i10, null);
        }
        super.startActivityForResult(intent, i10);
    }

    protected static String a(String str, Object obj) {
        f1683a.put(str, (FakeActivity) obj);
        return str;
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        if (view == null) {
            return;
        }
        super.setContentView(view);
        FakeActivity fakeActivity = this.f1684b;
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
            FlyLog.getInstance().w(th);
            return null;
        }
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i10, Bundle bundle) {
        FakeActivity fakeActivity = this.f1684b;
        if (fakeActivity != null) {
            fakeActivity.beforeStartActivityForResult(intent, i10, bundle);
        }
        if (DH.SyncMtd.getOSVersionIntForFly() >= 16) {
            super.startActivityForResult(intent, i10, bundle);
        } else {
            super.startActivityForResult(intent, i10);
        }
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
        FakeActivity fakeActivity = this.f1684b;
        if (fakeActivity != null) {
            fakeActivity.setContentView(view);
        }
    }

    public FakeActivity a() {
        String string;
        try {
            string = getPackageManager().getActivityInfo(getComponentName(), 128).metaData.getString(x.b("015PcbHeOdeMc6cf%fhYecEbh^chccch hYdb"));
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            string = null;
        }
        return a(string);
    }
}
