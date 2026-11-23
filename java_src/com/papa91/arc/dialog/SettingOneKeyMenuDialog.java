package com.papa91.arc.dialog;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
import com.papa91.arc.adapter.SimpleBaseAdapter;
import com.papa91.arc.bean.OneKeyMenuBean;
import com.papa91.arc.bean.SkillTableDataBean;
import com.papa91.arc.bean.SpBindsDataBean;
import java.util.ArrayList;
import org.ppsspp.ppsspp.R;

/* JADX INFO: loaded from: classes2.dex */
public class SettingOneKeyMenuDialog extends SettingDialog {
    int heroIndex;
    int[] images_h;
    int[] images_n;
    ImageView iv_close;
    private View ll_root;
    ListView lv_list;
    private BindAdapter mAdapter;
    private ArrayList<OneKeyMenuBean> menus;
    private int skillIdx;
    private int skillType;
    SkillTableDataBean.SkillsTableBean skillsTableBean;
    private ISpBindListener spBindListener;
    SpBindsDataBean spBindsDataBean;

    class BindAdapter extends SimpleBaseAdapter<OneKeyMenuBean> {

        class ViewHolder {
            public SimpleDraweeView sdv_image;
            public TextView tv_bind;
            public TextView tv_name;

            ViewHolder() {
            }
        }

        BindAdapter() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(final int i10, View view, ViewGroup viewGroup, boolean z10) {
            ViewHolder viewHolder;
            if (z10) {
                viewHolder = new ViewHolder();
                viewHolder.sdv_image = (SimpleDraweeView) view.findViewById(R.id.sdv_image);
                viewHolder.tv_name = (TextView) view.findViewById(R.id.tv_name);
                viewHolder.tv_bind = (TextView) view.findViewById(R.id.tv_bind);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            OneKeyMenuBean item = getItem(i10);
            viewHolder.tv_name.setText(item.getName());
            viewHolder.tv_bind.setText(item.getText());
            if (item.isCurrent()) {
                viewHolder.sdv_image.setImageResource(item.getIconRes());
                viewHolder.tv_bind.setBackgroundResource(R.drawable.bg_btn_onekey_choose_unable);
                viewHolder.tv_bind.setTextColor(Color.parseColor("#FF9A9A9A"));
            } else {
                viewHolder.sdv_image.setImageResource(item.getIconResNormal());
                viewHolder.tv_bind.setBackgroundResource(R.drawable.bg_btn_onekey_choose);
                viewHolder.tv_bind.setTextColor(Color.parseColor("#FF8CC6E5"));
                viewHolder.tv_bind.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.SettingOneKeyMenuDialog.BindAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (SettingOneKeyMenuDialog.this.spBindListener != null) {
                            if (SettingOneKeyMenuDialog.this.spBindsDataBean != null) {
                                for (int i11 = 0; i11 < SettingOneKeyMenuDialog.this.menus.size(); i11++) {
                                    SettingOneKeyMenuDialog.this.spBindsDataBean.getSp_binds().get(i11).getBinds().get(SettingOneKeyMenuDialog.this.heroIndex);
                                }
                            }
                            SettingOneKeyMenuDialog.this.spBindListener.onSpBind(i10);
                        }
                    }
                });
            }
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_onekey_bind;
        }
    }

    interface ISpBindListener {
        void onSpBind(int i10);
    }

    public SettingOneKeyMenuDialog(@NonNull Context context) {
        super(context);
        this.menus = new ArrayList<>();
        this.heroIndex = 0;
        this.lv_list = (ListView) findViewById(R.id.lv_list);
        this.iv_close = (ImageView) findViewById(R.id.iv_close);
        View viewFindViewById = findViewById(R.id.ll_root);
        this.ll_root = viewFindViewById;
        setOnListener(this.iv_close, viewFindViewById);
        initData();
    }

    private void initData() {
        if (this.mAdapter == null) {
            BindAdapter bindAdapter = new BindAdapter();
            this.mAdapter = bindAdapter;
            this.lv_list.setAdapter((ListAdapter) bindAdapter);
        }
    }

    private void initMenus() {
        this.menus.clear();
        if (this.skillType == 0) {
            this.images_h = getSpBindImages(0);
            this.images_n = getSpBindImages(1);
        } else {
            this.images_n = getSpBindImages(2);
            this.images_h = getSpBindImages(3);
        }
        for (int i10 = 0; i10 < this.images_n.length; i10++) {
            OneKeyMenuBean oneKeyMenuBean = new OneKeyMenuBean();
            oneKeyMenuBean.setIconRes(this.images_h[i10]);
            oneKeyMenuBean.setIconResNormal(this.images_n[i10]);
            SpBindsDataBean spBindsDataBean = this.spBindsDataBean;
            if (spBindsDataBean != null) {
                if (i10 >= spBindsDataBean.getSp_binds().size()) {
                    oneKeyMenuBean.setName("空");
                    oneKeyMenuBean.setText("选择");
                    this.menus.add(oneKeyMenuBean);
                } else {
                    int iIntValue = this.spBindsDataBean.getSp_binds().get(i10).getBinds().get(this.heroIndex).intValue();
                    if (iIntValue == -1) {
                        oneKeyMenuBean.setName("空");
                        oneKeyMenuBean.setText("选择");
                        oneKeyMenuBean.setSkillBean(null);
                    } else if (iIntValue >= this.skillsTableBean.getSkill().size()) {
                        oneKeyMenuBean.setName("空");
                        oneKeyMenuBean.setText("选择");
                        this.menus.add(oneKeyMenuBean);
                    } else {
                        SkillTableDataBean.SkillsTableBean.SkillBean skillBean = this.skillsTableBean.getSkill().get(iIntValue);
                        if (iIntValue == -1 || skillBean == null) {
                            oneKeyMenuBean.setName("空");
                            oneKeyMenuBean.setText("选择");
                        } else if (this.skillIdx == iIntValue) {
                            oneKeyMenuBean.setName(skillBean.getSkill_name());
                            oneKeyMenuBean.setCurrent(true);
                            oneKeyMenuBean.setText("当前");
                        } else {
                            oneKeyMenuBean.setName(skillBean.getSkill_name());
                            oneKeyMenuBean.setCurrent(false);
                            oneKeyMenuBean.setText("替换");
                        }
                        oneKeyMenuBean.setSkillBean(skillBean);
                    }
                }
            } else {
                oneKeyMenuBean.setName("空");
                oneKeyMenuBean.setText("选择");
            }
            this.menus.add(oneKeyMenuBean);
        }
        this.mAdapter.setDatas(this.menus);
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public int getLayoutId() {
        return R.layout.dialog_setting_onekey_menu;
    }

    @Override // com.papa91.arc.dialog.SettingDialog, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view == this.iv_close || view == this.ll_root) {
            dismissOnly();
        }
    }

    public void setHeroIndex(int i10) {
        this.heroIndex = i10;
    }

    public void setSkillIdx(int i10) {
        this.skillIdx = i10;
    }

    public void setSkillTableData(SkillTableDataBean.SkillsTableBean skillsTableBean) {
        this.skillsTableBean = skillsTableBean;
    }

    public void setSkillType(int i10) {
        this.skillType = i10;
    }

    public void setSpBindListener(ISpBindListener iSpBindListener) {
        this.spBindListener = iSpBindListener;
    }

    public void setSpBindsData(SpBindsDataBean spBindsDataBean) {
        this.spBindsDataBean = spBindsDataBean;
    }

    @Override // com.papa91.arc.dialog.SettingDialog, com.papa91.arc.view.BaseDialog, android.app.Dialog
    public void show() {
        super.show();
        initMenus();
    }
}
