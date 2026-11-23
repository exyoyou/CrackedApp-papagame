package com.join.kotlin.ui.cloudarchive.dialog;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public class SwitchView extends LinearLayout implements View.OnClickListener {
    private OnSwitchChangedListener listener;
    View ll_elite_room;
    View ll_standard_room;
    TextView tv_elite_room_name;
    TextView tv_standard_room_name;

    public interface OnSwitchChangedListener {
        void onSwitchChanged(int position);
    }

    public SwitchView(Context context) {
        super(context);
    }

    public void initView(Context context) {
        LayoutInflater.from(context).inflate(R.layout.switch_layout, this);
        this.ll_standard_room = findViewById(R.id.ll_standard_room);
        this.ll_elite_room = findViewById(R.id.ll_elite_room);
        this.tv_elite_room_name = (TextView) findViewById(R.id.tv_elite_room_name);
        this.tv_standard_room_name = (TextView) findViewById(R.id.tv_standard_room_name);
        this.ll_standard_room.setOnClickListener(this);
        this.ll_elite_room.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.ll_elite_room) {
            this.listener.onSwitchChanged(2);
            this.ll_elite_room.setBackgroundResource(R.drawable.switch_thumb_right);
            this.ll_standard_room.setBackgroundResource(R.drawable.switch_back);
            this.tv_standard_room_name.setTextColor(Color.parseColor("#C1D0DD"));
            this.tv_elite_room_name.setTextColor(-1);
            return;
        }
        if (id2 != R.id.ll_standard_room) {
            return;
        }
        this.ll_standard_room.setBackgroundResource(R.drawable.switch_thumb);
        this.ll_elite_room.setBackgroundResource(R.drawable.switch_back);
        this.tv_standard_room_name.setTextColor(-1);
        this.tv_elite_room_name.setTextColor(Color.parseColor("#C1D0DD"));
        this.listener.onSwitchChanged(1);
    }

    public void setListener(OnSwitchChangedListener listener) {
        this.listener = listener;
    }

    public void switchPosition1() {
        this.ll_standard_room.setBackgroundResource(R.drawable.switch_thumb);
        this.ll_elite_room.setBackgroundResource(R.drawable.switch_back);
        this.tv_standard_room_name.setTextColor(-1);
        this.tv_elite_room_name.setTextColor(Color.parseColor("#C1D0DD"));
        this.listener.onSwitchChanged(1);
    }

    public SwitchView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        initView(context);
    }

    public SwitchView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initView(context);
    }
}
