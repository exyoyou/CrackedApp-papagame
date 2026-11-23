package ms.bz.bd.c.Pgl;

import android.annotation.SuppressLint;
import android.hardware.display.DisplayManager;
import android.text.TextUtils;
import android.view.Display;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"NewApi"})
public final class pbll implements DisplayManager.DisplayListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DisplayManager f94425c;

    public pbll(DisplayManager displayManager) {
        this.f94425c = displayManager;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i10) {
        try {
            Display[] displays = this.f94425c.getDisplays();
            int length = displays.length;
            if (length > 0) {
                q1 q1VarC = q1.c();
                q1VarC.getClass();
                String strC = q1.c(displays);
                String strTt = q1.tt(displays);
                q1VarC.c(length);
                if (!TextUtils.isEmpty(strC)) {
                    q1VarC.c(strC);
                }
                if (!TextUtils.isEmpty(strTt)) {
                    q1VarC.tt(strTt);
                }
                q1VarC.c(System.currentTimeMillis() / 1000);
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i10) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i10) {
        try {
            Display[] displays = this.f94425c.getDisplays();
            int length = displays.length;
            if (length > 0) {
                q1 q1VarC = q1.c();
                q1VarC.getClass();
                String strC = q1.c(displays);
                String strTt = q1.tt(displays);
                q1VarC.c(length);
                if (!TextUtils.isEmpty(strC)) {
                    q1VarC.c(strC);
                }
                if (!TextUtils.isEmpty(strTt)) {
                    q1VarC.tt(strTt);
                }
                q1VarC.tt(System.currentTimeMillis() / 1000);
            }
        } catch (Exception unused) {
        }
    }
}
