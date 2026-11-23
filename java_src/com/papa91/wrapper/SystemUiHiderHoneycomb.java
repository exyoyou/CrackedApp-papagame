package com.papa91.wrapper;

import android.annotation.TargetApi;
import android.app.Activity;
import android.view.View;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(11)
class SystemUiHiderHoneycomb extends SystemUiHiderBase {
    private int mHideFlags;
    private int mShowFlags;
    private View.OnSystemUiVisibilityChangeListener mSystemUiVisibilityChangeListener;
    private View.OnSystemUiVisibilityChangeListener mSystemUiVisibilityChangeListener2;
    private int mTestFlags;
    private boolean mVisible;

    protected SystemUiHiderHoneycomb(Activity activity, View view, int i10) {
        super(activity, view, i10);
        this.mVisible = true;
        this.mSystemUiVisibilityChangeListener2 = new View.OnSystemUiVisibilityChangeListener() { // from class: com.papa91.wrapper.SystemUiHiderHoneycomb.1
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i11) {
                SystemUiHiderHoneycomb.this.mOnVisibilityChangeListener.onVisibilityChange(false);
                SystemUiHiderHoneycomb.this.mVisible = false;
            }
        };
        this.mSystemUiVisibilityChangeListener = new View.OnSystemUiVisibilityChangeListener() { // from class: com.papa91.wrapper.SystemUiHiderHoneycomb.2
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i11) {
                if ((i11 & SystemUiHiderHoneycomb.this.mTestFlags) != 0) {
                    SystemUiHiderHoneycomb.this.mOnVisibilityChangeListener.onVisibilityChange(false);
                    SystemUiHiderHoneycomb.this.mVisible = false;
                } else {
                    SystemUiHiderHoneycomb systemUiHiderHoneycomb = SystemUiHiderHoneycomb.this;
                    systemUiHiderHoneycomb.mAnchorView.setSystemUiVisibility(systemUiHiderHoneycomb.mShowFlags);
                    SystemUiHiderHoneycomb.this.mOnVisibilityChangeListener.onVisibilityChange(true);
                    SystemUiHiderHoneycomb.this.mVisible = true;
                }
            }
        };
        this.mShowFlags = 0;
        this.mHideFlags = 1;
        this.mTestFlags = 1;
        int i11 = this.mFlags;
        if ((i11 & 2) != 0) {
            this.mHideFlags = 1 | GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_LY_VALUE;
        }
        if ((i11 & 6) != 0) {
            this.mTestFlags = 2;
        }
    }

    @Override // com.papa91.wrapper.SystemUiHiderBase, com.papa91.wrapper.SystemUiHider
    public void hide() {
        this.mAnchorView.setSystemUiVisibility(this.mHideFlags);
        this.mAnchorView.setSystemUiVisibility(this.mHideFlags | 2 | 512 | 4096);
    }

    @Override // com.papa91.wrapper.SystemUiHiderBase, com.papa91.wrapper.SystemUiHider
    public boolean isVisible() {
        return this.mVisible;
    }

    @Override // com.papa91.wrapper.SystemUiHiderBase, com.papa91.wrapper.SystemUiHider
    public void setup() {
        this.mAnchorView.setOnSystemUiVisibilityChangeListener(this.mSystemUiVisibilityChangeListener2);
    }

    @Override // com.papa91.wrapper.SystemUiHiderBase, com.papa91.wrapper.SystemUiHider
    public void show() {
        this.mAnchorView.setSystemUiVisibility(this.mShowFlags);
    }
}
