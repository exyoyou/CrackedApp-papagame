package com.join.mgps.fragment.roomlist;

import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_raceroom)
public class a extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    WebView f70747c;

    @AfterViews
    void afterViews() {
        WebSettings settings = this.f70747c.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDisplayZoomControls(false);
        settings.setBuiltInZoomControls(false);
        settings.setCacheMode(2);
        UtilsMy.T3(this.f70747c);
    }
}
