package com.aggmoread.sdk.z.c.a.a.e.v;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.FragmentManager;
import android.app.LoaderManager;
import android.app.VoiceInteractor;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.transition.Scene;
import android.transition.TransitionManager;
import android.view.DragAndDropPermissions;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes7.dex */
public class e extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f5295a;

    public e(Activity activity) {
        if (activity != null) {
            this.f5295a = activity;
            attachBaseContext(activity.getBaseContext());
        }
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f5295a.dump(str, fileDescriptor, printWriter, strArr);
    }

    @Override // android.app.Activity
    public void finish() {
        this.f5295a.finish();
    }

    @Override // android.app.Activity
    public void finishActivity(int i10) {
        this.f5295a.finishActivity(i10);
    }

    @Override // android.app.Activity
    public void finishActivityFromChild(@NonNull Activity activity, int i10) {
        this.f5295a.finishActivityFromChild(activity, i10);
    }

    @Override // android.app.Activity
    public void finishAffinity() {
        this.f5295a.finishAffinity();
    }

    @Override // android.app.Activity
    public void finishAfterTransition() {
        this.f5295a.finishAfterTransition();
    }

    @Override // android.app.Activity
    public void finishAndRemoveTask() {
        this.f5295a.finishAndRemoveTask();
    }

    @Override // android.app.Activity
    public void finishFromChild(Activity activity) {
        this.f5295a.finishFromChild(activity);
    }

    @Override // android.app.Activity
    @Nullable
    public ActionBar getActionBar() {
        return this.f5295a.getActionBar();
    }

    @Override // android.app.Activity
    @Nullable
    public ComponentName getCallingActivity() {
        return this.f5295a.getCallingActivity();
    }

    @Override // android.app.Activity
    @Nullable
    public String getCallingPackage() {
        return this.f5295a.getCallingPackage();
    }

    @Override // android.app.Activity
    public int getChangingConfigurations() {
        return this.f5295a.getChangingConfigurations();
    }

    @Override // android.app.Activity
    public ComponentName getComponentName() {
        return this.f5295a.getComponentName();
    }

    @Override // android.app.Activity
    public Scene getContentScene() {
        return this.f5295a.getContentScene();
    }

    @Override // android.app.Activity
    public TransitionManager getContentTransitionManager() {
        return this.f5295a.getContentTransitionManager();
    }

    @Override // android.app.Activity
    @Nullable
    public View getCurrentFocus() {
        return this.f5295a.getCurrentFocus();
    }

    @Override // android.app.Activity
    public FragmentManager getFragmentManager() {
        return this.f5295a.getFragmentManager();
    }

    @Override // android.app.Activity
    public Intent getIntent() {
        return this.f5295a.getIntent();
    }

    @Override // android.app.Activity
    @Nullable
    public Object getLastNonConfigurationInstance() {
        return this.f5295a.getLastNonConfigurationInstance();
    }

    @Override // android.app.Activity
    @NonNull
    public LayoutInflater getLayoutInflater() {
        return this.f5295a.getLayoutInflater();
    }

    @Override // android.app.Activity
    public LoaderManager getLoaderManager() {
        return this.f5295a.getLoaderManager();
    }

    @Override // android.app.Activity
    @NonNull
    public String getLocalClassName() {
        return this.f5295a.getLocalClassName();
    }

    @Override // android.app.Activity
    public int getMaxNumPictureInPictureActions() {
        return Build.VERSION.SDK_INT >= 26 ? this.f5295a.getMaxNumPictureInPictureActions() : super.getMaxNumPictureInPictureActions();
    }

    @Override // android.app.Activity
    @NonNull
    public MenuInflater getMenuInflater() {
        return this.f5295a.getMenuInflater();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public PackageManager getPackageManager() {
        PackageManager packageManagerA = com.aggmoread.sdk.z.c.a.a.d.b.n.a();
        if (packageManagerA == null) {
            return super.getPackageManager();
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("pm_impl", "ha getPackageManager");
        return packageManagerA;
    }

    @Override // android.app.Activity
    @Nullable
    public Intent getParentActivityIntent() {
        return this.f5295a.getParentActivityIntent();
    }

    @Override // android.app.Activity
    public SharedPreferences getPreferences(int i10) {
        return this.f5295a.getPreferences(i10);
    }

    @Override // android.app.Activity
    @Nullable
    public Uri getReferrer() {
        return Build.VERSION.SDK_INT >= 22 ? this.f5295a.getReferrer() : super.getReferrer();
    }

    @Override // android.app.Activity
    public int getRequestedOrientation() {
        return this.f5295a.getRequestedOrientation();
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Object getSystemService(@NonNull String str) {
        return this.f5295a.getSystemService(str);
    }

    @Override // android.app.Activity
    public int getTaskId() {
        return this.f5295a.getTaskId();
    }

    @Override // android.app.Activity
    public VoiceInteractor getVoiceInteractor() {
        return Build.VERSION.SDK_INT >= 23 ? this.f5295a.getVoiceInteractor() : super.getVoiceInteractor();
    }

    @Override // android.app.Activity
    public Window getWindow() {
        return this.f5295a.getWindow();
    }

    @Override // android.app.Activity
    public WindowManager getWindowManager() {
        return this.f5295a.getWindowManager();
    }

    @Override // android.app.Activity
    public boolean isChangingConfigurations() {
        return this.f5295a.isChangingConfigurations();
    }

    @Override // android.app.Activity
    public boolean isDestroyed() {
        return this.f5295a.isDestroyed();
    }

    @Override // android.app.Activity
    public boolean isFinishing() {
        return this.f5295a.isFinishing();
    }

    @Override // android.app.Activity
    public boolean isImmersive() {
        return this.f5295a.isImmersive();
    }

    @Override // android.app.Activity
    public boolean isTaskRoot() {
        return this.f5295a.isTaskRoot();
    }

    @Override // android.app.Activity
    public boolean moveTaskToBack(boolean z10) {
        return this.f5295a.moveTaskToBack(z10);
    }

    @Override // android.app.Activity
    public boolean navigateUpTo(Intent intent) {
        return this.f5295a.navigateUpTo(intent);
    }

    @Override // android.app.Activity
    public boolean navigateUpToFromChild(Activity activity, Intent intent) {
        return this.f5295a.navigateUpToFromChild(activity, intent);
    }

    @Override // android.app.Activity
    public void onActivityReenter(int i10, Intent intent) {
        this.f5295a.onActivityReenter(i10, intent);
    }

    @Override // android.app.Activity
    public boolean releaseInstance() {
        return this.f5295a.releaseInstance();
    }

    @Override // android.app.Activity
    public DragAndDropPermissions requestDragAndDropPermissions(DragEvent dragEvent) {
        return Build.VERSION.SDK_INT >= 24 ? this.f5295a.requestDragAndDropPermissions(dragEvent) : super.requestDragAndDropPermissions(dragEvent);
    }

    @Override // android.app.Activity
    public void setShowWhenLocked(boolean z10) {
        if (Build.VERSION.SDK_INT >= 27) {
            this.f5295a.setShowWhenLocked(z10);
        } else {
            super.setShowWhenLocked(z10);
        }
    }

    @Override // android.app.Activity
    public void setTaskDescription(ActivityManager.TaskDescription taskDescription) {
        this.f5295a.setTaskDescription(taskDescription);
    }

    @Override // android.app.Activity
    public void setTurnScreenOn(boolean z10) {
        if (Build.VERSION.SDK_INT >= 27) {
            this.f5295a.setTurnScreenOn(z10);
        } else {
            super.setTurnScreenOn(z10);
        }
    }

    @Override // android.app.Activity
    public void setVisible(boolean z10) {
        this.f5295a.setVisible(z10);
    }

    @Override // android.app.Activity
    public boolean shouldUpRecreateTask(Intent intent) {
        return this.f5295a.shouldUpRecreateTask(intent);
    }

    @Override // android.app.Activity
    public void showLockTaskEscapeMessage() {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f5295a.showLockTaskEscapeMessage();
        } else {
            super.showLockTaskEscapeMessage();
        }
    }

    @Override // android.app.Activity
    public void startLockTask() {
        this.f5295a.startLockTask();
    }

    @Override // android.app.Activity
    public void stopLockTask() {
        this.f5295a.stopLockTask();
    }
}
