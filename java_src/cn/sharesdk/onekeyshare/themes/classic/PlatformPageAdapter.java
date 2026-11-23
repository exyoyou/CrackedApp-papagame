package cn.sharesdk.onekeyshare.themes.classic;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.onekeyshare.CustomerLogo;
import com.mob.tools.gui.ViewPagerAdapter;
import com.mob.tools.utils.ResHelper;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public abstract class PlatformPageAdapter extends ViewPagerAdapter implements View.OnClickListener {
    public static final int DESIGN_BOTTOM_HEIGHT = 52;
    protected static final int MIN_CLICK_INTERVAL = 1000;
    protected int bottomHeight;
    protected int cellHeight;
    protected Object[][] cells;
    private long lastClickTime;
    protected int lineSize;
    protected int logoHeight;
    protected int paddingTop;
    private PlatformPage page;
    protected int panelHeight;
    protected int sepLineWidth;
    private IndicatorView vInd;

    public PlatformPageAdapter(PlatformPage platformPage, ArrayList<Object> arrayList) {
        this.page = platformPage;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        calculateSize(platformPage.getContext(), arrayList);
        collectCells(arrayList);
    }

    private View createPanel(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        int i10 = 1;
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-855310);
        int i11 = this.panelHeight / this.cellHeight;
        int i12 = this.lineSize * i11;
        LinearLayout[] linearLayoutArr = new LinearLayout[i12];
        linearLayout.setTag(linearLayoutArr);
        int bitmapRes = ResHelper.getBitmapRes(context, "ssdk_oks_classic_platform_cell_back");
        int i13 = 0;
        while (i13 < i11) {
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, this.cellHeight));
            int i14 = 0;
            while (true) {
                int i15 = this.lineSize;
                if (i14 < i15) {
                    linearLayoutArr[(i15 * i13) + i14] = new LinearLayout(context);
                    linearLayoutArr[(this.lineSize * i13) + i14].setBackgroundResource(bitmapRes);
                    linearLayoutArr[(this.lineSize * i13) + i14].setOrientation(i10);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, this.cellHeight);
                    layoutParams.weight = 1.0f;
                    linearLayout2.addView(linearLayoutArr[(this.lineSize * i13) + i14], layoutParams);
                    if (i14 < this.lineSize - i10) {
                        linearLayout2.addView(new View(context), new LinearLayout.LayoutParams(this.sepLineWidth, -1));
                    }
                    i14++;
                    i10 = 1;
                }
            }
            linearLayout.addView(new View(context), new LinearLayout.LayoutParams(-1, this.sepLineWidth));
            i13++;
            i10 = 1;
        }
        for (int i16 = 0; i16 < i12; i16++) {
            LinearLayout linearLayout3 = linearLayoutArr[i16];
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, this.logoHeight);
            layoutParams2.topMargin = this.paddingTop;
            linearLayout3.addView(imageView, layoutParams2);
            TextView textView = new TextView(context);
            textView.setTextColor(-10197916);
            textView.setTextSize(2, 14.0f);
            textView.setGravity(17);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams3.weight = 1.0f;
            linearLayout3.addView(textView, layoutParams3);
        }
        return linearLayout;
    }

    private void refreshPanel(LinearLayout[] linearLayoutArr, Object[] objArr) {
        int bitmapRes = ResHelper.getBitmapRes(this.page.getContext(), "ssdk_oks_classic_platform_cell_back");
        int bitmapRes2 = ResHelper.getBitmapRes(this.page.getContext(), "ssdk_oks_classic_platfrom_cell_back_nor");
        for (int i10 = 0; i10 < objArr.length; i10++) {
            ImageView imageView = (ImageView) ResHelper.forceCast(linearLayoutArr[i10].getChildAt(0));
            TextView textView = (TextView) ResHelper.forceCast(linearLayoutArr[i10].getChildAt(1));
            if (objArr[i10] == null) {
                imageView.setVisibility(4);
                textView.setVisibility(4);
                linearLayoutArr[i10].setBackgroundResource(bitmapRes2);
                linearLayoutArr[i10].setOnClickListener(null);
            } else {
                imageView.setVisibility(0);
                textView.setVisibility(0);
                imageView.requestLayout();
                textView.requestLayout();
                linearLayoutArr[i10].setBackgroundResource(bitmapRes);
                linearLayoutArr[i10].setOnClickListener(this);
                linearLayoutArr[i10].setTag(objArr[i10]);
                Object obj = objArr[i10];
                if (obj instanceof CustomerLogo) {
                    CustomerLogo customerLogo = (CustomerLogo) ResHelper.forceCast(obj);
                    Bitmap bitmap = customerLogo.logo;
                    if (bitmap != null) {
                        imageView.setImageBitmap(bitmap);
                    } else {
                        imageView.setImageBitmap(null);
                    }
                    String str = customerLogo.label;
                    if (str != null) {
                        textView.setText(str);
                    } else {
                        textView.setText("");
                    }
                } else {
                    String lowerCase = ((Platform) ResHelper.forceCast(obj)).getName().toLowerCase();
                    int bitmapRes3 = ResHelper.getBitmapRes(imageView.getContext(), "ssdk_oks_classic_" + lowerCase);
                    if (bitmapRes3 > 0) {
                        imageView.setImageResource(bitmapRes3);
                    } else {
                        imageView.setImageBitmap(null);
                    }
                    int stringRes = ResHelper.getStringRes(textView.getContext(), "ssdk_" + lowerCase);
                    if (stringRes > 0) {
                        textView.setText(stringRes);
                    } else {
                        textView.setText("");
                    }
                }
            }
        }
    }

    protected abstract void calculateSize(Context context, ArrayList<Object> arrayList);

    protected abstract void collectCells(ArrayList<Object> arrayList);

    public int getBottomHeight() {
        return this.bottomHeight;
    }

    @Override // com.mob.tools.gui.ViewPagerAdapter
    public int getCount() {
        Object[][] objArr = this.cells;
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }

    public int getPanelHeight() {
        return this.panelHeight;
    }

    @Override // com.mob.tools.gui.ViewPagerAdapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = createPanel(viewGroup.getContext());
        }
        refreshPanel((LinearLayout[]) ResHelper.forceCast(((LinearLayout) ResHelper.forceCast(view)).getTag()), this.cells[i10]);
        return view;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastClickTime < 1000) {
            return;
        }
        this.lastClickTime = jCurrentTimeMillis;
        if (view.getTag() instanceof CustomerLogo) {
            this.page.performCustomLogoClick(view, (CustomerLogo) ResHelper.forceCast(view.getTag()));
        } else {
            this.page.showEditPage((Platform) ResHelper.forceCast(view.getTag()));
        }
    }

    @Override // com.mob.tools.gui.ViewPagerAdapter
    public void onScreenChange(int i10, int i11) {
        IndicatorView indicatorView = this.vInd;
        if (indicatorView != null) {
            indicatorView.setScreenCount(getCount());
            this.vInd.onScreenChange(i10, i11);
        }
    }

    public void setIndicator(IndicatorView indicatorView) {
        this.vInd = indicatorView;
    }
}
