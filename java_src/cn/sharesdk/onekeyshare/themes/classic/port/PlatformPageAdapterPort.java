package cn.sharesdk.onekeyshare.themes.classic.port;

import android.content.Context;
import cn.sharesdk.onekeyshare.themes.classic.PlatformPage;
import cn.sharesdk.onekeyshare.themes.classic.PlatformPageAdapter;
import com.mob.tools.utils.ResHelper;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class PlatformPageAdapterPort extends PlatformPageAdapter {
    private static final int DESIGN_LOGO_HEIGHT = 76;
    private static final int DESIGN_PADDING_TOP = 20;
    private static final int DESIGN_SCREEN_WIDTH_P = 720;
    private static final int DESIGN_SEP_LINE_WIDTH = 1;
    private static final int LINE_SIZE_P = 4;
    private static final int PAGE_SIZE_P = 12;

    public PlatformPageAdapterPort(PlatformPage platformPage, ArrayList<Object> arrayList) {
        super(platformPage, arrayList);
    }

    @Override // cn.sharesdk.onekeyshare.themes.classic.PlatformPageAdapter
    protected void calculateSize(Context context, ArrayList<Object> arrayList) {
        int screenWidth = ResHelper.getScreenWidth(context);
        this.lineSize = 4;
        float f10 = screenWidth / 720.0f;
        int i10 = (int) (1.0f * f10);
        this.sepLineWidth = i10;
        if (i10 < 1) {
            i10 = 1;
        }
        this.sepLineWidth = i10;
        this.logoHeight = (int) (76.0f * f10);
        this.paddingTop = (int) (20.0f * f10);
        this.bottomHeight = (int) (f10 * 52.0f);
        this.cellHeight = (screenWidth - (i10 * 3)) / 4;
        if (arrayList.size() <= this.lineSize) {
            this.panelHeight = this.cellHeight + this.sepLineWidth;
        } else if (arrayList.size() <= 12 - this.lineSize) {
            this.panelHeight = (this.cellHeight + this.sepLineWidth) * 2;
        } else {
            this.panelHeight = (this.cellHeight + this.sepLineWidth) * 3;
        }
    }

    @Override // cn.sharesdk.onekeyshare.themes.classic.PlatformPageAdapter
    protected void collectCells(ArrayList<Object> arrayList) {
        int size = arrayList.size();
        if (size < 12) {
            int i10 = this.lineSize;
            int i11 = size / i10;
            if (size % i10 != 0) {
                i11++;
            }
            this.cells = (Object[][]) Array.newInstance((Class<?>) Object.class, 1, i11 * i10);
        } else {
            int i12 = size / 12;
            if (size % 12 != 0) {
                i12++;
            }
            this.cells = (Object[][]) Array.newInstance((Class<?>) Object.class, i12, 12);
        }
        for (int i13 = 0; i13 < size; i13++) {
            int i14 = i13 / 12;
            this.cells[i14][i13 - (i14 * 12)] = arrayList.get(i13);
        }
    }
}
