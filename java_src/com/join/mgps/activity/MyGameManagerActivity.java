package com.join.mgps.activity;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_mygame_manager)
public class MyGameManagerActivity extends BaseActivity {
    Fragment fragment;

    @ViewById
    View frame;

    @Extra
    int scene;

    @AfterViews
    void afterViews() {
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        MyGamePapaFragmentV2 myGamePapaFragmentV2Build = MyGamePapaFragmentV2_.n0().build();
        this.fragment = myGamePapaFragmentV2Build;
        fragmentTransactionBeginTransaction.add(R.id.frame, myGamePapaFragmentV2Build);
        fragmentTransactionBeginTransaction.commit();
        com.papa.sim.statistic.t.l(this).R1(Event.enterMyGameCentre, new Ext());
    }
}
