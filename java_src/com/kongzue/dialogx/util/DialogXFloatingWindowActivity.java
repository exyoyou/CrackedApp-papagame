package com.kongzue.dialogx.util;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.BaseDialog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DialogXFloatingWindowActivity extends AppCompatActivity {
    static WeakReference<DialogXFloatingWindowActivity> dialogXFloatingWindowActivity;
    WeakReference<Activity> fromActivity;
    int fromActivityHashCode;
    boolean isScreenshot;
    List<String> shownDialogXList = new ArrayList();

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 3 || DialogXFloatingWindowActivity.this.getFromActivity() == null || DialogXFloatingWindowActivity.this.getFromActivity() == null || (DialogXFloatingWindowActivity.this.getFromActivity() instanceof DialogXFloatingWindowActivity)) {
                return false;
            }
            return DialogXFloatingWindowActivity.this.getFromActivity().dispatchTouchEvent(motionEvent);
        }
    }

    public static DialogXFloatingWindowActivity getDialogXFloatingWindowActivity() {
        WeakReference<DialogXFloatingWindowActivity> weakReference = dialogXFloatingWindowActivity;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public void finish(String str) {
        this.shownDialogXList.remove(str);
        if (this.shownDialogXList.isEmpty()) {
            WeakReference<DialogXFloatingWindowActivity> weakReference = dialogXFloatingWindowActivity;
            if (weakReference != null) {
                weakReference.clear();
            }
            dialogXFloatingWindowActivity = null;
            super.finish();
            if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() > 5) {
                overridePendingTransition(0, 0);
            }
        }
    }

    public Activity getFromActivity() {
        WeakReference<Activity> weakReference = this.fromActivity;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public int getFromActivityHashCode() {
        return this.fromActivityHashCode;
    }

    public boolean isSameFrom(int i10) {
        return i10 == this.fromActivityHashCode;
    }

    public boolean isScreenshot() {
        return this.isScreenshot;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        dialogXFloatingWindowActivity = new WeakReference<>(this);
        super.onCreate(bundle);
        setContentView(R.layout.layout_dialogx_empty);
        int intExtra = getIntent().getIntExtra("fromActivityUiStatus", 0);
        if (intExtra == 0) {
            getWindow().getDecorView().setSystemUiVisibility(512);
        } else {
            getWindow().getDecorView().setSystemUiVisibility(intExtra | 512);
        }
        setFromActivityHashCode(getIntent().getIntExtra("from", 0));
        String stringExtra = getIntent().getStringExtra("dialogXKey");
        com.kongzue.dialogx.util.a aVarT = BaseDialog.t(stringExtra);
        if (aVarT == null) {
            finish();
        } else {
            this.shownDialogXList.add(stringExtra);
            aVarT.a(this);
        }
        getWindow().getDecorView().setOnTouchListener(new a());
    }

    public DialogXFloatingWindowActivity setFromActivity(Activity activity) {
        this.fromActivity = new WeakReference<>(activity);
        return this;
    }

    public DialogXFloatingWindowActivity setFromActivityHashCode(int i10) {
        this.fromActivityHashCode = i10;
        return this;
    }

    public DialogXFloatingWindowActivity setScreenshot(boolean z10) {
        this.isScreenshot = z10;
        return this;
    }

    public void showDialogX(String str) {
        com.kongzue.dialogx.util.a aVarT = BaseDialog.t(str);
        if (aVarT != null) {
            this.shownDialogXList.add(str);
            aVarT.a(this);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        WeakReference<DialogXFloatingWindowActivity> weakReference = dialogXFloatingWindowActivity;
        if (weakReference != null) {
            weakReference.clear();
        }
        dialogXFloatingWindowActivity = null;
        super.finish();
        if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() > 5) {
            overridePendingTransition(0, 0);
        }
    }
}
