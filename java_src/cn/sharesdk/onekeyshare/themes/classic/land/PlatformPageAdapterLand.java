package cn.sharesdk.onekeyshare.themes.classic.land;

import android.content.Context;
import cn.sharesdk.onekeyshare.themes.classic.PlatformPage;
import cn.sharesdk.onekeyshare.themes.classic.PlatformPageAdapter;
import com.mob.tools.utils.ResHelper;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class PlatformPageAdapterLand extends PlatformPageAdapter {
    private static final int DESIGN_CELL_WIDTH_L = 160;
    private static final int DESIGN_LOGO_HEIGHT = 76;
    private static final int DESIGN_PADDING_TOP = 20;
    private static final int DESIGN_SCREEN_WIDTH_L = 1280;
    private static final int DESIGN_SEP_LINE_WIDTH = 1;

    public PlatformPageAdapterLand(PlatformPage platformPage, ArrayList<Object> arrayList) {
        super(platformPage, arrayList);
    }

    @Override // cn.sharesdk.onekeyshare.themes.classic.PlatformPageAdapter
    protected void calculateSize(Context context, ArrayList<Object> arrayList) {
        int screenWidth = ResHelper.getScreenWidth(context);
        float f10 = screenWidth / 1280.0f;
        int i10 = screenWidth / ((int) (160.0f * f10));
        this.lineSize = i10;
        int i11 = (int) (1.0f * f10);
        this.sepLineWidth = i11;
        if (i11 < 1) {
            i11 = 1;
        }
        this.sepLineWidth = i11;
        this.logoHeight = (int) (76.0f * f10);
        this.paddingTop = (int) (20.0f * f10);
        this.bottomHeight = (int) (f10 * 52.0f);
        int i12 = (screenWidth - (i11 * 3)) / (i10 - 1);
        this.cellHeight = i12;
        this.panelHeight = i12 + i11;
    }

    @Override // cn.sharesdk.onekeyshare.themes.classic.PlatformPageAdapter
    protected void collectCells(ArrayList<Object> arrayList) {
        int size = arrayList.size();
        int i10 = this.lineSize;
        if (size < i10) {
            int i11 = size / i10;
            if (size % i10 != 0) {
                i11++;
            }
            this.cells = (Object[][]) Array.newInstance((Class<?>) Object.class, 1, i11 * i10);
        } else {
            int i12 = size / i10;
            if (size % i10 != 0) {
                i12++;
            }
            this.cells = (Object[][]) Array.newInstance((Class<?>) Object.class, i12, i10);
        }
        for (int i13 = 0; i13 < size; i13++) {
            int i14 = this.lineSize;
            int i15 = i13 / i14;
            this.cells[i15][i13 - (i14 * i15)] = arrayList.get(i13);
        }
    }
}
