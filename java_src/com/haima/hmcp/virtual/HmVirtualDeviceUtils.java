package com.haima.hmcp.virtual;

import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.WindowManager;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.google.zxing.client.result.ExpandedProductParsedResult;
import com.haima.hmcp.Constants;
import com.haima.hmcp.R;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.bean.HmVirFullKeyBoardInfoBean;
import com.haima.hmcp.virtual.bean.HmVirtualLayoutBean;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.Util.o0;
import com.kuaishou.weapon.p0.t;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.umeng.analytics.pro.bm;
import com.xinzhu.overmind.server.os.f;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import net.lingala.zip4j.util.e;
import x.a;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirtualDeviceUtils {
    private static final float INVALID_RATIO = -1.0f;
    public static final String PICS_CACHE_DIR = "HmVirPicsCache";
    private static String TAG = "HmVirtualDeviceUtils";

    /* JADX INFO: renamed from: com.haima.hmcp.virtual.HmVirtualDeviceUtils$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$haima$hmcp$virtual$HmVirtualDeviceUtils$PicsSupplementCondition;

        static {
            int[] iArr = new int[PicsSupplementCondition.values().length];
            $SwitchMap$com$haima$hmcp$virtual$HmVirtualDeviceUtils$PicsSupplementCondition = iArr;
            try {
                iArr[PicsSupplementCondition.C.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$haima$hmcp$virtual$HmVirtualDeviceUtils$PicsSupplementCondition[PicsSupplementCondition.K.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$haima$hmcp$virtual$HmVirtualDeviceUtils$PicsSupplementCondition[PicsSupplementCondition.K_C.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum PicsSupplementCondition {
        K,
        C,
        K_C
    }

    public enum PicsSupplementType {
        XBOX,
        KEYBOARD
    }

    public static Bitmap base64ToBitmap(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        byte[] bArrDecode = Base64.decode(str, 2);
        return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
    }

    public static void dealUsingLargeLayoutConfig(boolean z10) {
        HmVirtualDeviceManager.get().setIsUsingLargeLayoutConfig(z10);
        CountlyUtil.recordEvent(Constants.COUNTYLY_X86_VIRTUAL_LAYOUT_CONFIG, z10 ? Constants.COUNTYLY_X86_VIRTUAL_LAYOUT_CONFIG_VALUE_LARGE : Constants.COUNTYLY_X86_VIRTUAL_LAYOUT_CONFIG_VALUE_SMALL);
    }

    public static int dp2px(int i10, Context context) {
        return (int) TypedValue.applyDimension(1, i10, ResourceManager.getInstance().getResources().getDisplayMetrics());
    }

    public static Activity getActivityFromContext(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (!(context instanceof Application) && !(context instanceof Service)) {
            while (context != null && (context instanceof ContextWrapper)) {
                context = ((ContextWrapper) context).getBaseContext();
                if (context instanceof Activity) {
                    return (Activity) context;
                }
            }
        }
        return null;
    }

    public static double getAngle(float f10, float f11, float f12, float f13) {
        if (f10 > f12 && f11 < f13) {
            return Math.toDegrees(Math.asin((f13 - f11) / getDistance(f10, f11, f12, f13)));
        }
        if (f10 >= f12 || f11 >= f13) {
            return (f10 >= f12 || f11 <= f13) ? 360.0d - Math.toDegrees(Math.asin((f11 - f13) / getDistance(f10, f11, f12, f13))) : Math.toDegrees(Math.asin((f11 - f13) / getDistance(f10, f11, f12, f13))) + 180.0d;
        }
        return 180.0d - Math.toDegrees(Math.asin((f13 - f11) / getDistance(f10, f11, f12, f13)));
    }

    public static Bitmap getBitmap(Context context, String str, int i10, int i11, int i12) {
        Bitmap bitmapByBase64Data = !TextUtils.isEmpty(str) ? HmVirtualDeviceManager.get().getBitmapByBase64Data(context, str, i11, i12) : null;
        return bitmapByBase64Data == null ? getBitmapByImgID(context, i10, i11, i12) : bitmapByBase64Data;
    }

    public static Bitmap getBitmapByDrawableID(Context context, int i10, int i11, int i12) {
        Drawable drawable = ResourceManager.getInstance().getResources().getDrawable(i10);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, i11, i12);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static Bitmap getBitmapByImgID(Context context, int i10, int i11, int i12) {
        try {
            return Bitmap.createScaledBitmap(BitmapFactory.decodeResource(ResourceManager.getInstance().getResources(), i10), i11, i12, true);
        } catch (Exception e10) {
            LogUtils.e(TAG, "create bitmap error:" + Log.getStackTraceString(e10));
            return null;
        }
    }

    public static int[] getBtnBgID(String str, int i10, int i11) {
        if (i11 == 8) {
            return new int[]{R.mipmap.hm_vir_mouse_left_down, R.mipmap.hm_vir_mouse_left_up};
        }
        if (i11 == 9) {
            return new int[]{R.mipmap.hm_vir_mouse_right_down, R.mipmap.hm_vir_mouse_right_up};
        }
        if (i11 == 10) {
            return new int[]{R.mipmap.hm_vir_mouse_mid_down, R.mipmap.hm_vir_mouse_mid_up};
        }
        if (i11 == 11) {
            return new int[]{R.mipmap.hm_vir_mouse_wheel_top_down, R.mipmap.hm_vir_mouse_wheel_top_up};
        }
        if (i11 == 12) {
            return new int[]{R.mipmap.hm_vir_mouse_wheel_bottom_down, R.mipmap.hm_vir_mouse_wheel_bottom_up};
        }
        if (i11 == 13) {
            return new int[]{R.mipmap.hm_vir_drawer_down, R.mipmap.hm_vir_drawer_up};
        }
        if (i10 == 1) {
            return new int[]{R.mipmap.hm_vir_circle_down, R.mipmap.hm_vir_circle_up};
        }
        if ("START".equals(str)) {
            return new int[]{R.mipmap.hm_vir_xbox_start_down, R.mipmap.hm_vir_xbox_start_up};
        }
        if ("SELECT".equals(str) || "BACK".equals(str)) {
            return new int[]{R.mipmap.hm_vir_xbox_select_down, R.mipmap.hm_vir_xbox_select_up};
        }
        if ("LT".equals(str) || "L1".equals(str) || "RT".equals(str) || "R1".equals(str)) {
            return new int[]{R.mipmap.hm_vir_xbox_ltrt_down, R.mipmap.hm_vir_xbox_ltrt_up};
        }
        return (ExpandedProductParsedResult.POUND.equals(str) || "L2".equals(str) || "RB".equals(str) || "R2".equals(str)) ? new int[]{R.mipmap.hm_vir_xbox_lbrb_down, R.mipmap.hm_vir_xbox_lbrb_up} : new int[]{R.mipmap.hm_vir_circle_down, R.mipmap.hm_vir_circle_up};
    }

    public static float getDecimalAfterThereSize(float f10) {
        try {
            return Float.parseFloat(String.format(Locale.getDefault(), "%.3f", Float.valueOf(f10)));
        } catch (Exception e10) {
            e10.printStackTrace();
            return f10;
        }
    }

    public static Point getDisplayMetrics(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
        int i10 = ResourceManager.getInstance().getResources().getConfiguration().orientation;
        return displayMetrics.widthPixels > displayMetrics.heightPixels ? new Point(displayMetrics.widthPixels, displayMetrics.heightPixels) : new Point(displayMetrics.heightPixels, displayMetrics.widthPixels);
    }

    public static float getDistance(float f10, float f11, float f12, float f13) {
        return (float) Math.hypot(Math.abs(f10 - f12), Math.abs(f11 - f13));
    }

    public static List<HmVirFullKeyBoardInfoBean> getFullKBSymbolList() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList2.add(new HmVirtualViewBean.KeysDTO("9", 57));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 1, 1, 1, "(", arrayList2));
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList3.add(new HmVirtualViewBean.KeysDTO("0", 48));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 2, 1, 1, ")", arrayList3));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 3, "[", 219));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 4, "]", 221));
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList4.add(new HmVirtualViewBean.KeysDTO("[", 219));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 5, 1, 1, "{", arrayList4));
        ArrayList arrayList5 = new ArrayList();
        arrayList5.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList5.add(new HmVirtualViewBean.KeysDTO("]", 221));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 6, 1, 1, "}", arrayList5));
        ArrayList arrayList6 = new ArrayList();
        arrayList6.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList6.add(new HmVirtualViewBean.KeysDTO("2", 50));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 7, 1, 1, "@", arrayList6));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 11, "1", 49));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 12, "2", 50));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 13, "3", 51));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 14, ",", 188));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 15, o0.f49827a, 190));
        ArrayList arrayList7 = new ArrayList();
        arrayList7.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList7.add(new HmVirtualViewBean.KeysDTO(GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, 56));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 1, 1, 1, WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD, arrayList7));
        ArrayList arrayList8 = new ArrayList();
        arrayList8.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList8.add(new HmVirtualViewBean.KeysDTO("3", 51));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 2, 1, 1, "#", arrayList8));
        ArrayList arrayList9 = new ArrayList();
        arrayList9.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList9.add(new HmVirtualViewBean.KeysDTO("5", 53));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 3, 1, 1, "%", arrayList9));
        ArrayList arrayList10 = new ArrayList();
        arrayList10.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList10.add(new HmVirtualViewBean.KeysDTO("4", 52));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 4, 1, 1, "$", arrayList10));
        ArrayList arrayList11 = new ArrayList();
        arrayList11.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList11.add(new HmVirtualViewBean.KeysDTO("7", 55));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 5, 1, 1, a.f97576d, arrayList11));
        ArrayList arrayList12 = new ArrayList();
        arrayList12.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList12.add(new HmVirtualViewBean.KeysDTO("-", 189));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 6, 1, 1, "_", arrayList12));
        ArrayList arrayList13 = new ArrayList();
        arrayList13.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList13.add(new HmVirtualViewBean.KeysDTO("6", 54));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 7, 1, 1, "^", arrayList13));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 11, "4", 52));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 12, "5", 53));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 13, "6", 54));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 14, 1, 2, ResourceManager.getString(R.string.haima_hmcp_full_keyboard_delete), 8, true));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 1, e.F0, 191));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 2, "\\", 220));
        ArrayList arrayList14 = new ArrayList();
        arrayList14.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList14.add(new HmVirtualViewBean.KeysDTO("\\", 220));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 3, 1, 1, "|", arrayList14));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 4, "'", 222));
        ArrayList arrayList15 = new ArrayList();
        arrayList15.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList15.add(new HmVirtualViewBean.KeysDTO("'", 222));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 5, 1, 1, a.f97579g, arrayList15));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 6, "`", 192));
        ArrayList arrayList16 = new ArrayList();
        arrayList16.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList16.add(new HmVirtualViewBean.KeysDTO("`", 192));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 7, 1, 1, "~", arrayList16));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 11, "7", 55));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 12, GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, 56));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 13, "9", 57));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 14, 1, 2, ResourceManager.getString(R.string.haima_hmcp_full_keyboard_return), 13, true));
        ArrayList arrayList17 = new ArrayList();
        arrayList17.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList17.add(new HmVirtualViewBean.KeysDTO(";", 186));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 1, 1, 1, ":", arrayList17));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 2, ";", 186));
        ArrayList arrayList18 = new ArrayList();
        arrayList18.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList18.add(new HmVirtualViewBean.KeysDTO(SimpleComparison.EQUAL_TO_OPERATION, 187));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 3, 1, 1, "+", arrayList18));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 4, "-", 189));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 5, SimpleComparison.EQUAL_TO_OPERATION, 187));
        ArrayList arrayList19 = new ArrayList();
        arrayList19.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList19.add(new HmVirtualViewBean.KeysDTO(",", 188));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 6, 1, 1, SimpleComparison.LESS_THAN_OPERATION, arrayList19));
        ArrayList arrayList20 = new ArrayList();
        arrayList20.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList20.add(new HmVirtualViewBean.KeysDTO(o0.f49827a, 190));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 7, 1, 1, SimpleComparison.GREATER_THAN_OPERATION, arrayList20));
        ArrayList arrayList21 = new ArrayList();
        arrayList21.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList21.add(new HmVirtualViewBean.KeysDTO(e.F0, 191));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 11, 1, 1, "?", arrayList21));
        ArrayList arrayList22 = new ArrayList();
        arrayList22.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList22.add(new HmVirtualViewBean.KeysDTO("1", 49));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 12, 1, 1, "!", arrayList22));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 13, "0", 48));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 14, 1, 2, ResourceManager.getString(R.string.haima_hmcp_full_keyboard_back), HmVirtualDeviceManager.FULL_KB_TYPE_OTHER, true));
        return arrayList;
    }

    public static List<HmVirFullKeyBoardInfoBean> getFullKBWordList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new HmVirFullKeyBoardInfoBean(1, 14, ResourceManager.getString(R.string.haima_hmcp_full_keyboard_prior), 33, true));
        arrayList.add(new HmVirFullKeyBoardInfoBean(1, 15, ResourceManager.getString(R.string.haima_hmcp_full_keyboard_next), 34, true));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 1, "1", 49));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 2, "2", 50));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 3, "3", 51));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 4, "4", 52));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 5, "5", 53));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 11, "6", 54));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 12, "7", 55));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 13, GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, 56));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 14, "9", 57));
        arrayList.add(new HmVirFullKeyBoardInfoBean(2, 15, "0", 48));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 1, "q", 81));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 2, IAdInterListener.AdReqParam.WIDTH, 87));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 3, "e", 69));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 4, "r", 82));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 5, bm.aM, 84));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 11, "y", 89));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 12, "u", 85));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 13, "i", 73));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 14, "o", 79));
        arrayList.add(new HmVirFullKeyBoardInfoBean(3, 15, "p", 80));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 1, ResourceManager.getString(R.string.haima_hmcp_full_keyboard_tab), 9, true));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 2, "a", 65));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 3, "s", 83));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 4, t.f74895t, 68));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 5, f.TAG, 70));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 11, "g", 71));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 12, "h", 72));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 13, "j", 74));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 14, t.f74876a, 75));
        arrayList.add(new HmVirFullKeyBoardInfoBean(4, 15, t.f74879d, 76));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 1, ResourceManager.getString(R.string.haima_hmcp_full_keyboard_caps_lock), 20, true));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 2, bm.aH, 90));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 3, "x", 88));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 4, "c", 67));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 5, "v", 86));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 11, t.f74887l, 66));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 12, "n", 78));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 13, t.f74888m, 77));
        arrayList.add(new HmVirFullKeyBoardInfoBean(5, 14, 1, 2, ResourceManager.getString(R.string.haima_hmcp_full_keyboard_backspace), 8, true));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new HmVirtualViewBean.KeysDTO("Win", 91));
        arrayList2.add(new HmVirtualViewBean.KeysDTO("Space", 32));
        arrayList.add(new HmVirFullKeyBoardInfoBean(6, 1, 1, 1, ResourceManager.getString(R.string.haima_hmcp_full_keyboard_win_space), (List<HmVirtualViewBean.KeysDTO>) arrayList2, true));
        arrayList.add(new HmVirFullKeyBoardInfoBean(6, 2, ResourceManager.getString(R.string.haima_hmcp_full_keyboard_num_char), HmVirtualDeviceManager.FULL_KB_TYPE_OTHER, true));
        arrayList.add(new HmVirFullKeyBoardInfoBean(6, 3, ",", 188));
        arrayList.add(new HmVirFullKeyBoardInfoBean(6, 4, o0.f49827a, 190));
        arrayList.add(new HmVirFullKeyBoardInfoBean(6, 5, 1, 7, ResourceManager.getString(R.string.haima_hmcp_full_keyboard_space), 32, true));
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList3.add(new HmVirtualViewBean.KeysDTO("1", 49));
        arrayList.add(new HmVirFullKeyBoardInfoBean(6, 12, 1, 1, "!", arrayList3));
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(new HmVirtualViewBean.KeysDTO("SHIFT", 16));
        arrayList4.add(new HmVirtualViewBean.KeysDTO("2", 50));
        arrayList.add(new HmVirFullKeyBoardInfoBean(6, 13, 1, 1, "@", arrayList4));
        arrayList.add(new HmVirFullKeyBoardInfoBean(6, 14, 1, 2, ResourceManager.getString(R.string.haima_hmcp_full_keyboard_return), 13, true));
        return arrayList;
    }

    public static String getX86VirtualLayoutConfigStr(HashMap<String, String> map, Context context) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        String str = map.get(Constants.KEYBOARD_MAP_CONTENT_X86);
        String str2 = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_LARGE_SCREEN);
        if (!usingLargeScreenConfig(map, context) || TextUtils.isEmpty(str2)) {
            LogUtils.i(TAG, "getX86VirtualLayoutConfigStr usingSmallScreen");
            dealUsingLargeLayoutConfig(false);
        } else {
            LogUtils.i(TAG, "getX86VirtualLayoutConfigStr usingLargeScreen");
            dealUsingLargeLayoutConfig(true);
            str = str2;
        }
        LogUtils.i(TAG, "getX86VirtualLayoutConfigStr result: " + str);
        return str;
    }

    public static boolean isInRect(float f10, float f11, Rect rect) {
        return f10 >= ((float) rect.left) && f10 <= ((float) rect.right) && f11 >= ((float) rect.top) && f11 <= ((float) rect.bottom);
    }

    public static boolean isListsEqualedByStrings(List<HmVirtualViewBean.KeysDTO> list, List<HmVirtualViewBean.KeysDTO> list2, PicsSupplementCondition picsSupplementCondition) {
        if (list == null || list2 == null || list.size() == 0 || list2.size() == 0 || list.size() != list2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            HmVirtualViewBean.KeysDTO keysDTO = list.get(i10);
            HmVirtualViewBean.KeysDTO keysDTO2 = list2.get(i10);
            if (keysDTO == null || keysDTO2 == null) {
                return false;
            }
            int i11 = AnonymousClass1.$SwitchMap$com$haima$hmcp$virtual$HmVirtualDeviceUtils$PicsSupplementCondition[picsSupplementCondition.ordinal()];
            if (i11 == 1) {
                if (keysDTO.getCode() != keysDTO2.getCode()) {
                    return false;
                }
            } else if (i11 != 2) {
                if (i11 == 3 && (!Objects.equals(keysDTO.getKey(), keysDTO2.getKey()) || keysDTO.getCode() != keysDTO2.getCode())) {
                    return false;
                }
            } else if (!Objects.equals(keysDTO.getKey(), keysDTO2.getKey())) {
                return false;
            }
        }
        return true;
    }

    public static void picsSupplement(HmVirtualViewBean hmVirtualViewBean, PicsSupplementType picsSupplementType) {
        HmVirtualLayoutBean layoutBean;
        if (hmVirtualViewBean == null || (layoutBean = HmVirtualDeviceManager.get().getLayoutBean()) == null) {
            return;
        }
        int keyType = hmVirtualViewBean.getKeyType();
        List<HmVirtualViewBean> xbox = layoutBean.getXbox();
        List<HmVirtualViewBean> keyboard = layoutBean.getKeyboard();
        switch (keyType) {
            case -2:
            case 3:
            case 4:
            case 5:
                supplementOfPicsByKeyType(xbox, hmVirtualViewBean);
                break;
            case -1:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                supplementOfPicsByKeyType(keyboard, hmVirtualViewBean);
                break;
            case 1:
            case 2:
                if (picsSupplementType == PicsSupplementType.XBOX) {
                    supplementOfPicsByK(xbox, hmVirtualViewBean, PicsSupplementCondition.K);
                } else if (picsSupplementType == PicsSupplementType.KEYBOARD) {
                    supplementOfPicsByK(keyboard, hmVirtualViewBean, PicsSupplementCondition.K_C);
                }
                break;
        }
    }

    public static Bitmap scaledBitmap(Bitmap bitmap, int i10, int i11) {
        if (i10 <= 0 || i11 <= 0 || bitmap == null) {
            return bitmap;
        }
        return (bitmap.getWidth() == i10 && bitmap.getHeight() == i11) ? bitmap : Bitmap.createScaledBitmap(bitmap, i10, i11, true);
    }

    private static void supplementOfPicsByConfig(HmVirtualViewBean hmVirtualViewBean) {
        HmVirtualLayoutBean.ConfigDTO config;
        HmVirtualLayoutBean layoutBean = HmVirtualDeviceManager.get().getLayoutBean();
        if (layoutBean == null || (config = layoutBean.getConfig()) == null) {
            return;
        }
        hmVirtualViewBean.setPicSelectedMD5(config.getPic_common_bg_selected_MD5());
        hmVirtualViewBean.setPicUnselectedMD5(config.getPic_common_bg_unselected_MD5());
    }

    private static void supplementOfPicsByK(List<HmVirtualViewBean> list, HmVirtualViewBean hmVirtualViewBean, PicsSupplementCondition picsSupplementCondition) {
        int keyType;
        if (list == null || list.size() == 0 || hmVirtualViewBean == null || (keyType = hmVirtualViewBean.getKeyType()) <= 0) {
            return;
        }
        for (HmVirtualViewBean hmVirtualViewBean2 : list) {
            if (hmVirtualViewBean2 != null && hmVirtualViewBean2.getKeyType() == keyType && isListsEqualedByStrings(hmVirtualViewBean2.getKeys(), hmVirtualViewBean.getKeys(), picsSupplementCondition)) {
                hmVirtualViewBean.setPicSelectedMD5(hmVirtualViewBean2.getPicSelectedMD5());
                hmVirtualViewBean.setPicUnselectedMD5(hmVirtualViewBean2.getPicUnselectedMD5());
                hmVirtualViewBean.setHideText(hmVirtualViewBean2.getHideText());
                hmVirtualViewBean.setPicCenterMD5(hmVirtualViewBean2.getPicCenterMD5());
                return;
            }
        }
    }

    private static void supplementOfPicsByKeyType(List<HmVirtualViewBean> list, HmVirtualViewBean hmVirtualViewBean) {
        if (list == null || list.size() == 0 || hmVirtualViewBean == null) {
            return;
        }
        for (HmVirtualViewBean hmVirtualViewBean2 : list) {
            if (hmVirtualViewBean2 != null && hmVirtualViewBean2.getKeyType() == hmVirtualViewBean.getKeyType()) {
                hmVirtualViewBean.setPicSelectedMD5(hmVirtualViewBean2.getPicSelectedMD5());
                hmVirtualViewBean.setPicUnselectedMD5(hmVirtualViewBean2.getPicUnselectedMD5());
                hmVirtualViewBean.setCrossPicRockerDirectionMD5(hmVirtualViewBean2.getCrossPicRockerDirectionMD5());
                hmVirtualViewBean.setTextRocketCenter(hmVirtualViewBean2.getTextRocketCenter());
                hmVirtualViewBean.setPicCenterMD5(hmVirtualViewBean2.getPicCenterMD5());
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0036  */
    public static boolean usingLargeScreenConfig(HashMap<String, String> map, Context context) {
        float f10;
        if (map == null || map.isEmpty()) {
            f10 = -1.0f;
        } else {
            String str = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_ASPECT_RATIO);
            if (TextUtils.isEmpty(str)) {
                f10 = -1.0f;
            } else {
                try {
                    f10 = Float.parseFloat(str);
                } catch (Exception e10) {
                    LogUtils.e(TAG, "usingLargeScreenConfig exception: " + e10.getMessage());
                    f10 = -1.0f;
                }
            }
        }
        LogUtils.i(TAG, "usingLargeScreenConfig: ratio is" + f10);
        if (f10 > 0.0f) {
            if (context == null) {
                LogUtils.e(TAG, "usingLargeScreenConfig failed:context is null");
                return false;
            }
            Point displayMetrics = getDisplayMetrics(context);
            int i10 = displayMetrics.x;
            int i11 = displayMetrics.y;
            LogUtils.i(TAG, "usingLargeScreenConfig: width is " + i10 + "，height is " + i11);
            if (i10 != 0 && i11 != 0) {
                double d10 = (((double) i10) * 1.0d) / ((double) i11);
                LogUtils.i(TAG, "usingLargeScreenConfig screen ratio is " + d10);
                if (d10 <= f10) {
                    LogUtils.i(TAG, "usingLargeScreenConfig is true");
                    return true;
                }
            }
        }
        LogUtils.i(TAG, "usingLargeScreenConfig is false");
        return false;
    }

    public static void vibrator(Context context) {
        if (HmVirtualDeviceManager.ableVibrator) {
            try {
                Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
                if (vibrator != null && vibrator.hasVibrator()) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        vibrator.vibrate(VibrationEffect.createOneShot(50L, -1));
                    } else {
                        vibrator.vibrate(50L);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }
}
