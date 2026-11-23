package com.join.mgps.activity;

import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.activity.ComponentActivity;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public class EmuLaunchLoadingActivity extends ComponentActivity implements View.OnSystemUiVisibilityChangeListener {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f51299g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    AnimationDrawable f51300h;

    private void handleIntent() {
        ImageView imageView = (ImageView) findViewById(R.id.iv_loading);
        this.f51299g = imageView;
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getDrawable();
        this.f51300h = animationDrawable;
        animationDrawable.start();
    }

    void hideNavigationBar() {
        setSystemUiVisibility();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mod_loading);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(this);
        handleIntent();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        hideNavigationBar();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        finish();
    }

    @Override // android.view.View.OnSystemUiVisibilityChangeListener
    public void onSystemUiVisibilityChange(int visibility) {
        if (visibility == 0) {
            hideNavigationBar();
        }
    }

    void setSystemUiVisibility() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }
}
