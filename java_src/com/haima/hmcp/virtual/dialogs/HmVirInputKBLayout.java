package com.haima.hmcp.virtual.dialogs;

import android.content.Context;
import android.widget.FrameLayout;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.virtual.views.HmVirFullKeyBoardLayout;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirInputKBLayout {
    private HmVirFullKeyBoardLayout fullKeyboardLayout;
    private FrameLayout root;
    private FrameLayout secondRoot;

    public HmVirInputKBLayout(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        this.root = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.secondRoot = frameLayout2;
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-1, (int) (ResourceManager.getInstance().getResources().getDisplayMetrics().density * 226.0f), 80));
        this.secondRoot.setBackgroundColor(1996488704);
        this.root.addView(this.secondRoot);
        HmVirFullKeyBoardLayout hmVirFullKeyBoardLayout = new HmVirFullKeyBoardLayout(context);
        this.fullKeyboardLayout = hmVirFullKeyBoardLayout;
        hmVirFullKeyBoardLayout.setLayoutParams(new FrameLayout.LayoutParams((int) (ResourceManager.getInstance().getResources().getDisplayMetrics().density * 628.0f), (int) (ResourceManager.getInstance().getResources().getDisplayMetrics().density * 178.0f), 17));
        this.secondRoot.addView(this.fullKeyboardLayout);
    }

    public HmVirFullKeyBoardLayout getFullKeyboardLayout() {
        return this.fullKeyboardLayout;
    }

    public FrameLayout getRoot() {
        return this.root;
    }

    public FrameLayout getSecondRoot() {
        return this.secondRoot;
    }
}
