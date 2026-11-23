package com.join.mgps.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.beans.GameArchitectureType;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.aw0;
import com.join.kotlin.module.hmcloud.bean.GuideState;
import dagger.hilt.android.AndroidEntryPoint;

/* JADX INFO: loaded from: classes4.dex */
@AndroidEntryPoint
public class HMCloudMainTestActivity extends Hilt_HMCloudMainTestActivity {
    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(View view) {
        showPopup(aw0.inflate(LayoutInflater.from(this)).getRoot(), null, 0);
    }

    @Override // com.join.mgps.activity.HMCloudMenuActivity, com.join.mgps.activity.Hilt_HMCloudMenuActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hmcloud_main_test);
        initObserver();
        this.viewModel.isHmCloudPc().postValue(Boolean.TRUE);
        findViewById(R.id.text).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.r4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57953b.lambda$onCreate$0(view);
            }
        });
        this.viewModel.setGameId("4020753882");
        this.viewModel.setGameId("1983933881");
        this.viewModel.setGameId("3803895056");
        this.viewModel.setGameId("113537263");
        this.viewModel.setGameId("2075362474");
        this.viewModel.setGameId("2512250246");
        this.viewModel.getGameCfgInfoBySrv();
        this.viewModel.loadLastCommonConfig();
        this.viewModel.getGuideState().postValue(new GuideState.Page(0, 1));
        HmcpManager.getInstance().setGameArchitectureType(GameArchitectureType.X86);
        this.binding.f46700l.setVisibility(0);
        checkGuide();
    }
}
