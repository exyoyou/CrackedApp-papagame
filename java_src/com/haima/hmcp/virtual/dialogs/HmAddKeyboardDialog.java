package com.haima.hmcp.virtual.dialogs;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.haima.hmcp.R;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirKeyboardInfoBean;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.views.HmVirKeyboardLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class HmAddKeyboardDialog extends HmBaseAddDialog {
    private final String TAG;
    private final View.OnClickListener keyMouseRockerClick;
    private LinearLayout llTabs;
    private final HmVirKeyboardLayout.SelectListener selectListener;
    private int startOffset;
    private TextView tvKeyBoard;
    private TextView tvNumber;
    private TextView tvRocker;
    private FrameLayout.LayoutParams viewLayoutParams;
    private View viewLine;
    private List<View> viewList;
    private ViewPager viewPager;

    private class MyPageAdapter extends PagerAdapter {
        private List<View> data;

        public MyPageAdapter(List<View> list) {
            this.data = list;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(@NonNull ViewGroup viewGroup, int i10, @NonNull Object obj) {
            viewGroup.removeView(this.data.get(i10));
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            List<View> list = this.data;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @NonNull
        public Object instantiateItem(@NonNull ViewGroup viewGroup, int i10) {
            viewGroup.addView(this.data.get(i10));
            return this.data.get(i10);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
            return view == obj;
        }
    }

    public HmAddKeyboardDialog(@NonNull Context context, boolean z10, HmBaseAddDialog.AddListener addListener) {
        super(context, R.style.haima_hmcp_virtual_dialog);
        this.TAG = getClass().getSimpleName();
        this.keyMouseRockerClick = new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.HmAddKeyboardDialog.3
            /* JADX WARN: Code duplicated, block: B:36:0x00b1 A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:37:0x00b2  */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str;
                int i10;
                int i11;
                int i12;
                int i13;
                if (view.getId() != R.id.imgRockerWASD) {
                    if (view.getId() == R.id.imgRockerTBLR) {
                        HmAddKeyboardDialog hmAddKeyboardDialog = HmAddKeyboardDialog.this;
                        if (hmAddKeyboardDialog.isMoreKeyMode) {
                            hmAddKeyboardDialog.showToast("此类型不支持组合键");
                            return;
                        } else {
                            str = "UDLR";
                            i10 = 0;
                            i11 = 7;
                        }
                    } else {
                        if (view.getId() == R.id.imgMouseMid) {
                            str = "MM";
                            i10 = 513;
                            i11 = 10;
                        } else if (view.getId() == R.id.imgMouseLeft) {
                            str = "ML";
                            i10 = 512;
                            i11 = 8;
                        } else if (view.getId() == R.id.imgMouseRight) {
                            str = "MR";
                            i10 = 514;
                            i11 = 9;
                        } else if (view.getId() == R.id.imgMouseWheelUp) {
                            str = "WU";
                            i10 = 515;
                            i11 = 11;
                        } else if (view.getId() == R.id.imgMouseWheelDown) {
                            str = "WD";
                            i10 = 515;
                            i11 = 12;
                        } else {
                            str = "";
                            i10 = 0;
                            i11 = 1;
                        }
                        i12 = 108;
                        i13 = 108;
                    }
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    HmAddKeyboardDialog.this.createViewBean(str, i10, i11, i12, i13);
                }
                HmAddKeyboardDialog hmAddKeyboardDialog2 = HmAddKeyboardDialog.this;
                if (hmAddKeyboardDialog2.isMoreKeyMode) {
                    hmAddKeyboardDialog2.showToast("此类型不支持组合键");
                    return;
                } else {
                    str = "WASD";
                    i10 = 7;
                    i11 = 6;
                }
                i12 = 320;
                i13 = 320;
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                HmAddKeyboardDialog.this.createViewBean(str, i10, i11, i12, i13);
            }
        };
        this.selectListener = new HmVirKeyboardLayout.SelectListener() { // from class: com.haima.hmcp.virtual.dialogs.HmAddKeyboardDialog.8
            @Override // com.haima.hmcp.virtual.views.HmVirKeyboardLayout.SelectListener
            public void onSelect(HmVirKeyboardInfoBean hmVirKeyboardInfoBean, View view) {
                HmAddKeyboardDialog hmAddKeyboardDialog = HmAddKeyboardDialog.this;
                if (hmAddKeyboardDialog.mListener != null) {
                    hmAddKeyboardDialog.createViewBean(hmVirKeyboardInfoBean.getKey(), hmVirKeyboardInfoBean.getCode(), 1, 108, 108);
                } else {
                    Toast.makeText(hmAddKeyboardDialog.getContext().getApplicationContext(), "add error , please register listener", 0).show();
                }
            }
        };
        this.mListener = addListener;
        this.isMoreKeyMode = z10;
        this.keyList = new ArrayList();
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.hm_dialog_add_keyboard, (ViewGroup) null, false);
        setContentView(viewInflate);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvBack);
        textView.setText("< 返回");
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.HmAddKeyboardDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HmAddKeyboardDialog.this.dismiss();
            }
        });
        if (z10) {
            viewInflate.findViewById(R.id.llMoreBtn).setVisibility(0);
        }
        initMoreViews(viewInflate);
        this.viewPager = (ViewPager) viewInflate.findViewById(R.id.viewPager);
        this.tvKeyBoard = (TextView) viewInflate.findViewById(R.id.tvKeyBoard);
        this.tvNumber = (TextView) viewInflate.findViewById(R.id.tvNumber);
        this.tvRocker = (TextView) viewInflate.findViewById(R.id.tvRocker);
        this.viewLine = viewInflate.findViewById(R.id.viewLine);
        this.llTabs = (LinearLayout) viewInflate.findViewById(R.id.llTabs);
        this.viewLayoutParams = (FrameLayout.LayoutParams) this.viewLine.getLayoutParams();
        ArrayList arrayList = new ArrayList();
        this.viewList = arrayList;
        arrayList.add(createKeyboardLayout(0));
        this.viewList.add(createKeyboardLayout(1));
        this.viewList.add(createMouseRockerView());
        this.viewPager.setAdapter(new MyPageAdapter(this.viewList));
        initListener();
        this.viewLine.post(new Runnable() { // from class: com.haima.hmcp.virtual.dialogs.HmAddKeyboardDialog.2
            @Override // java.lang.Runnable
            public void run() {
                HmAddKeyboardDialog.this.viewLayoutParams.leftMargin = HmAddKeyboardDialog.this.llTabs.getLeft() + HmVirtualDeviceUtils.dp2px(21, HmAddKeyboardDialog.this.getContext());
                HmAddKeyboardDialog hmAddKeyboardDialog = HmAddKeyboardDialog.this;
                hmAddKeyboardDialog.startOffset = hmAddKeyboardDialog.viewLayoutParams.leftMargin;
                HmAddKeyboardDialog.this.viewLine.setLayoutParams(HmAddKeyboardDialog.this.viewLayoutParams);
            }
        });
    }

    private View createMouseRockerView() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.hm_include_mouse, (ViewGroup) null, false);
        ((ImageView) viewInflate.findViewById(R.id.imgRockerWASD)).setOnClickListener(this.keyMouseRockerClick);
        ((ImageView) viewInflate.findViewById(R.id.imgRockerTBLR)).setOnClickListener(this.keyMouseRockerClick);
        ((ImageView) viewInflate.findViewById(R.id.imgMouseMid)).setOnClickListener(this.keyMouseRockerClick);
        ((ImageView) viewInflate.findViewById(R.id.imgMouseLeft)).setOnClickListener(this.keyMouseRockerClick);
        ((ImageView) viewInflate.findViewById(R.id.imgMouseRight)).setOnClickListener(this.keyMouseRockerClick);
        ((ImageView) viewInflate.findViewById(R.id.imgMouseWheelUp)).setOnClickListener(this.keyMouseRockerClick);
        ((ImageView) viewInflate.findViewById(R.id.imgMouseWheelDown)).setOnClickListener(this.keyMouseRockerClick);
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createViewBean(String str, int i10, int i11, int i12, int i13) {
        if (this.isMoreKeyMode) {
            if (this.keyList.size() >= 3) {
                this.keyList.remove(2);
            }
            this.keyList.add(new HmVirtualViewBean.KeysDTO(str, i10));
            refreshMoreKeyUI();
            return;
        }
        if (this.mListener != null) {
            HmVirtualViewBean hmVirtualViewBeanCreateNoKeyBean = createNoKeyBean(i12, i13, i11);
            hmVirtualViewBeanCreateNoKeyBean.getKeys().add(new HmVirtualViewBean.KeysDTO(str, i10));
            this.mListener.onAdd(hmVirtualViewBeanCreateNoKeyBean);
            dismiss();
        }
    }

    private void initListener() {
        this.viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.haima.hmcp.virtual.dialogs.HmAddKeyboardDialog.4
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i10) {
                LogUtils.i(HmAddKeyboardDialog.this.TAG, "onPageScrollStateChanged = " + i10);
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i10, float f10, int i11) {
                LogUtils.i(HmAddKeyboardDialog.this.TAG, "onPageScrolled = " + i10 + ";" + f10 + ";" + i11);
                HmAddKeyboardDialog.this.viewLayoutParams.leftMargin = (int) (((float) HmAddKeyboardDialog.this.startOffset) + ((((float) i10) + f10) * ((float) HmVirtualDeviceUtils.dp2px(82, HmAddKeyboardDialog.this.getContext()))));
                HmAddKeyboardDialog.this.viewLine.setLayoutParams(HmAddKeyboardDialog.this.viewLayoutParams);
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i10) {
                LogUtils.i(HmAddKeyboardDialog.this.TAG, "onPageSelected = " + i10);
            }
        });
        this.tvKeyBoard.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.HmAddKeyboardDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HmAddKeyboardDialog.this.viewPager.setCurrentItem(0);
            }
        });
        this.tvNumber.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.HmAddKeyboardDialog.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HmAddKeyboardDialog.this.viewPager.setCurrentItem(1);
            }
        });
        this.tvRocker.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.HmAddKeyboardDialog.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HmAddKeyboardDialog.this.viewPager.setCurrentItem(2);
            }
        });
    }

    protected View createKeyboardLayout(int i10) {
        FrameLayout frameLayout = new FrameLayout(getContext());
        HmVirKeyboardLayout hmVirKeyboardLayout = new HmVirKeyboardLayout(getContext());
        frameLayout.addView(hmVirKeyboardLayout);
        hmVirKeyboardLayout.initChild(i10, this.selectListener);
        return frameLayout;
    }
}
