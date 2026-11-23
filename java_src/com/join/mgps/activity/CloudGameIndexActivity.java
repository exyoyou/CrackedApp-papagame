package com.join.mgps.activity;

import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Fullscreen;
import org.androidannotations.annotations.WindowFeature;

/* JADX INFO: loaded from: classes4.dex */
@WindowFeature({1})
@EActivity(R.layout.activity_cloud_game_index)
@Fullscreen
public class CloudGameIndexActivity extends ModGameIndexActivity {
    @Override // com.join.mgps.activity.ModGameIndexActivity
    void afterViews() {
        super.afterViews();
        ExtBean extBean = new ExtBean();
        extBean.setTypeCode(EventP.TypeCode.page.name()).setChatId(EventP.ChatId.gameStartPage.name()).setResourceId(this.gameId).setParent(this.parentExtBean).buildScene();
        com.papa.sim.statistic.t.l(this).R1(Event.commonExp, extBean.toExt());
    }
}
