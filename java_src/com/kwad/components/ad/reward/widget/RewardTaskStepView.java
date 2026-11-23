package com.kwad.components.ad.reward.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.kwad.components.ad.reward.l.c;
import com.kwad.sdk.R;
import com.kwad.sdk.widget.DividerView;
import com.kwad.sdk.wrapper.m;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class RewardTaskStepView extends LinearLayout {
    private List<c> FK;
    private String tS;

    public RewardTaskStepView(Context context) {
        super(context);
        this.FK = new ArrayList();
        lK();
    }

    private void af(boolean z10) {
        DividerView dividerView = (DividerView) m.a(getContext(), R.layout.ksad_reward_task_dialog_dash, this, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.ksad_reward_apk_info_card_step_icon_size);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.ksad_reward_apk_info_card_step_divider_height);
        dividerView.setDividerColor(getResources().getColor(z10 ? R.color.ksad_reward_main_color : R.color.ksad_reward_undone_color));
        addView(dividerView, dimensionPixelSize, dimensionPixelSize2);
    }

    private void lK() {
        setOrientation(1);
    }

    private void lL() {
        int size = this.FK.size();
        int i10 = 0;
        while (i10 < size) {
            c cVar = this.FK.get(i10);
            int i11 = i10 + 1;
            a(i11, cVar.la(), cVar.lb(), cVar.isCompleted());
            if (i10 < size - 1) {
                af(this.FK.get(i11).isCompleted());
            }
            i10 = i11;
        }
    }

    public final void a(List<c> list, String str) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.tS = str;
        this.FK.clear();
        this.FK.addAll(list);
        lL();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public RewardTaskStepView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.FK = new ArrayList();
        lK();
    }

    private void a(int i10, String str, String str2, boolean z10) {
        int i11;
        if (z10) {
            i11 = R.layout.ksad_reward_task_step_item_checked;
        } else {
            i11 = R.layout.ksad_reward_task_step_item_unchecked;
        }
        ViewGroup viewGroup = (ViewGroup) m.a(getContext(), i11, this, false);
        if (z10) {
            a(viewGroup, str);
        } else {
            a(viewGroup, i10, str2);
        }
        addView(viewGroup);
    }

    public RewardTaskStepView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.FK = new ArrayList();
        lK();
    }

    @RequiresApi(api = 21)
    public RewardTaskStepView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.FK = new ArrayList();
        lK();
    }

    private static void a(ViewGroup viewGroup, String str) {
        ((TextView) viewGroup.findViewById(R.id.ksad_reward_task_step_item_text)).setText(str);
    }

    private void a(ViewGroup viewGroup, int i10, String str) {
        ((TextView) viewGroup.findViewById(R.id.ksad_reward_task_step_item_text)).setText(String.format(str, this.tS));
        ((TextView) viewGroup.findViewById(R.id.ksad_reward_task_step_item_icon_text)).setText(String.valueOf(i10));
    }
}
