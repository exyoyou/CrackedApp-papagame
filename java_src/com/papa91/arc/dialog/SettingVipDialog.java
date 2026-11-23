package com.papa91.arc.dialog;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.Group;
import androidx.viewpager.widget.ViewPager;
import com.papa91.arc.MarketUtil;
import com.papa91.arc.bean.SubBean;
import com.papa91.arc.bean.VipBean;
import com.papa91.arc.view.GlideImageLoader;
import com.youth.banner.Banner;
import com.youth.banner.view.BannerViewPager;
import java.util.ArrayList;
import java.util.List;
import org.ppsspp.ppsspp.R;

/* JADX INFO: loaded from: classes2.dex */
public class SettingVipDialog extends SettingDialog implements ya.b {
    Banner banner;
    BannerViewPager bannerViewPager;
    View close;
    int from;
    Group group;
    List<String> images;
    ImageView vipBattle;
    List<VipBean> vipBeans;
    ImageView vipCheating;
    ImageView vipSelectScene;
    ImageView vipSlot;
    ImageView vipSp;

    public SettingVipDialog(@NonNull Context context) {
        super(context);
        this.images = new ArrayList();
        this.vipBeans = new ArrayList();
        initVipViews();
        initData();
        setBackgroundDimEnabled(false);
    }

    private void initData() {
    }

    private void initVipViews() {
        this.banner = (Banner) findViewById(R.id.banner);
        this.bannerViewPager = (BannerViewPager) findViewById(R.id.bannerViewPager);
        this.vipSp = (ImageView) findViewById(R.id.vipSp);
        this.vipCheating = (ImageView) findViewById(R.id.vipCheating);
        this.vipSlot = (ImageView) findViewById(R.id.vipSlot);
        this.vipSelectScene = (ImageView) findViewById(R.id.vipSelectScene);
        this.vipBattle = (ImageView) findViewById(R.id.vipBattle);
        this.close = findViewById(R.id.close);
        this.group = (Group) findViewById(R.id.group);
        setOnListener(this.close, this.vipSp, this.vipCheating, this.vipSlot, this.vipSelectScene, this.vipBattle);
        this.banner.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.papa91.arc.dialog.SettingVipDialog.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i10) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i10, float f10, int i11) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i10) {
                SettingVipDialog.this.select(i10);
            }
        });
    }

    @Override // ya.b
    public void OnBannerClick(int i10) {
        SubBean sub;
        if (i10 >= this.vipBeans.size() || (sub = this.vipBeans.get(i10).getSub()) == null) {
            return;
        }
        MarketUtil.intent(getContext(), sub.getLink_type(), sub.getJump_type(), sub.getLink_type_val(), sub.getCrc_link_type_val(), sub.getTpl_type());
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public int getLayoutId() {
        return R.layout.dialog_setting_vip;
    }

    @Override // com.papa91.arc.dialog.SettingDialog, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        int id2 = view.getId();
        if (id2 == R.id.close) {
            dismissOnly();
            return;
        }
        if (id2 == R.id.vipSp) {
            this.bannerViewPager.setCurrentItem(1);
            return;
        }
        if (id2 == R.id.vipCheating) {
            this.bannerViewPager.setCurrentItem(2);
            return;
        }
        if (id2 == R.id.vipSlot) {
            this.bannerViewPager.setCurrentItem(3);
        } else if (id2 == R.id.vipSelectScene) {
            this.bannerViewPager.setCurrentItem(4);
        } else if (id2 == R.id.vipBattle) {
            this.bannerViewPager.setCurrentItem(5);
        }
    }

    void resetButtonState() {
        setVipTabSelect(this.vipSp, this.from == 0, R.drawable.vip_tab_sp_selected, R.drawable.vip_tab_sp_default);
        setVipTabSelect(this.vipCheating, this.from == 1, R.drawable.vip_tab_cheating_selected, R.drawable.vip_tab_cheating_default);
        setVipTabSelect(this.vipSlot, this.from == 2, R.drawable.vip_tab_slot_selected, R.drawable.vip_tab_slot_default);
        setVipTabSelect(this.vipSelectScene, this.from == 3, R.drawable.vip_tab_select_sence_selected, R.drawable.vip_tab_select_sence_default);
        setVipTabSelect(this.vipBattle, this.from == 4, R.drawable.vip_tab_battle_selected, R.drawable.vip_tab_battle_default);
    }

    void select(int i10) {
        this.from = i10;
        resetButtonState();
    }

    void setVipTabSelect(ImageView imageView, boolean z10, int i10, int i11) {
        if (imageView == null || imageView.isSelected() == z10) {
            return;
        }
        if (z10) {
            imageView.setBackground(getContext().getResources().getDrawable(R.drawable.vip_btn_selected));
            imageView.setImageResource(i10);
        } else {
            imageView.setBackground(null);
            imageView.setImageResource(i11);
        }
        imageView.setSelected(z10);
    }

    public void show(String... strArr) {
        if (strArr != null && strArr.length > 0) {
            this.from = Integer.parseInt(strArr[0]);
        }
        show();
        BannerViewPager bannerViewPager = this.bannerViewPager;
        if (bannerViewPager != null) {
            bannerViewPager.setCurrentItem(this.from + 1);
        }
    }

    public void updateVipDatas(List<VipBean> list) {
        if (list == null) {
            return;
        }
        this.vipBeans.clear();
        this.vipBeans.addAll(list);
        this.images.clear();
        for (int i10 = 0; i10 < 5; i10++) {
            if (i10 < list.size()) {
                this.images.add(list.get(i10).getMain().getPic_remote());
            } else {
                this.images.add("");
            }
        }
        this.banner.z(this.images).y(new GlideImageLoader()).D(this).I();
        this.bannerViewPager.setCurrentItem(this.from + 1);
    }
}
