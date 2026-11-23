package com.haima.hmcp.virtual;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.fastjson.a;
import com.alipay.sdk.util.f;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.bean.HmVirtualLayoutBean;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.listeners.HmVirtualViewListener;
import com.haima.hmcp.virtual.views.HmBaseVirtualView;
import com.haima.hmcp.virtual.views.HmVirtualBtn;
import com.haima.hmcp.virtual.views.HmVirtualCheckBox;
import com.haima.hmcp.virtual.views.HmVirtualDirection;
import com.haima.hmcp.virtual.views.HmVirtualDrawer;
import com.haima.hmcp.virtual.views.HmVirtualHandle;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirtualDeviceManager {
    public static final float BASE_SCALE_DEFAULT = 1.0f;
    public static final float BASE_SCALE_MAX = 3.0f;
    public static final float BASE_SCALE_MIN = 0.0f;
    public static final int FULL_KB_TYPE_OTHER = -123;
    private static final int KEYBOARD_MODE_MASK = 2;
    public static final int KEY_TYPE_BTN_DRAWER = 13;
    public static final int KEY_TYPE_BTN_MOUSE_L = 8;
    public static final int KEY_TYPE_BTN_MOUSE_MID = 10;
    public static final int KEY_TYPE_BTN_MOUSE_R = 9;
    public static final int KEY_TYPE_BTN_MOUSE_WHEEL_DOWN = 12;
    public static final int KEY_TYPE_BTN_MOUSE_WHEEL_UP = 11;
    public static final int KEY_TYPE_BTN_SENSITIVITY_KEYBOARD = -1;
    public static final int KEY_TYPE_BTN_SENSITIVITY_XBOX = -2;
    public static final int KEY_TYPE_GROUP = 2;
    public static final int KEY_TYPE_ONE = 1;
    public static final int KEY_TYPE_ROCKER_DIRECTION = 3;
    public static final int KEY_TYPE_ROCKER_L = 4;
    public static final int KEY_TYPE_ROCKER_R = 5;
    public static final int KEY_TYPE_ROCKER_UDLR = 7;
    public static final int KEY_TYPE_ROCKER_WASD = 6;
    public static final int MODE_MOUSE_NONE = 0;
    public static final int MODE_MOUSE_SLIP = 2;
    public static final int MODE_MOUSE_TOUCH = 1;
    public static final int TYPE_KEYBOARD = 1;
    public static final int TYPE_STICK = 0;
    private static final int XBOX_MODE_MASK = 1;
    public static int containerHeight;
    public static int containerWidth;
    public static boolean editMode;
    public static boolean isAlphaSetByApp;
    public static boolean isScaleSetByApp;
    public static boolean isShowRawKeySetByApp;
    private static HmVirtualDeviceManager mInstances;
    public static boolean showRawKey;
    public static float transparency;
    private int currentVirtualType;
    private HmVirtualLayoutBean layoutBean;
    private HmVirtualLayoutBean.ConfigDTO localConfig;
    private List<HmVirtualViewBean> localKeyBoardBeanList;
    private List<HmVirtualViewBean> localXboxBeanList;
    ThreadPoolExecutor mExecutor;
    private boolean mIsUsingLargeLayoutConfig;
    private OperateListener operateListener;
    public static final String TAG = get().getClass().getSimpleName();
    public static boolean ableVibrator = true;
    public static Point rawRootPoint = new Point(0, 0);
    public static boolean showAlignLine = false;
    private List<Integer> pointIDList = new ArrayList();
    private String packageName = "";
    private final String defTemplate = "{\"config\":{\"default_layout\":\"\",\"xbox_alpha\":1},\"keyboard\":[],\"mouse\":{\"btn_sensitivity\":1,\"mode\":2,\"sensitivity\":1},\"xbox\":[{\"kT\":1,\"ks\":[{\"c\":0,\"k\":\"LT\"}],\"n\":\"LT\",\"p\":{\"h\":144,\"w\":144,\"x\":0.062,\"y\":0.222},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":256,\"k\":\"LB\"}],\"n\":\"LB\",\"p\":{\"h\":144,\"w\":144,\"x\":0.062,\"y\":0.378},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":0,\"k\":\"RT\"}],\"n\":\"RT\",\"p\":{\"h\":144,\"w\":144,\"x\":0.863,\"y\":0.222},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":512,\"k\":\"RB\"}],\"n\":\"RB\",\"p\":{\"h\":144,\"w\":144,\"x\":0.863,\"y\":0.378},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":16,\"k\":\"START\"}],\"n\":\"START\",\"p\":{\"h\":96,\"w\":96,\"x\":0.509,\"y\":0.033},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":32,\"k\":\"SELECT\"}],\"n\":\"SELECT\",\"p\":{\"h\":96,\"w\":96,\"x\":0.441,\"y\":0.033},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":64,\"k\":\"LS\"}],\"n\":\"LS\",\"p\":{\"h\":120,\"w\":120,\"x\":0.01,\"y\":0.519},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":128,\"k\":\"RS\"}],\"n\":\"RS\",\"p\":{\"h\":120,\"w\":120,\"x\":0.927,\"y\":0.519},\"s\":1,\"sT\":2},{\"kT\":4,\"ks\":[{\"c\":0,\"k\":\"LR\"}],\"n\":\"LR\",\"p\":{\"h\":320,\"w\":320,\"x\":0.083,\"y\":0.611},\"s\":1,\"sT\":2},{\"kT\":3,\"ks\":[{\"c\":1,\"k\":\"UP\"},{\"c\":2,\"k\":\"DOWN\"},{\"c\":4,\"k\":\"LEFT\"},{\"c\":8,\"k\":\"RIGHT\"}],\"n\":\"DIRECTION\",\"p\":{\"h\":240,\"w\":240,\"x\":0.312,\"y\":0.722},\"s\":1,\"sT\":2},{\"kT\":5,\"ks\":[{\"c\":0,\"k\":\"RR\"}],\"n\":\"RR\",\"p\":{\"h\":240,\"w\":240,\"x\":0.562,\"y\":0.722},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":4096,\"k\":\"A\"}],\"n\":\"A\",\"p\":{\"h\":120,\"w\":120,\"x\":0.839,\"y\":0.833},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":8192,\"k\":\"B\"}],\"n\":\"B\",\"p\":{\"h\":120,\"w\":120,\"x\":0.896,\"y\":0.731},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":16384,\"k\":\"X\"}],\"n\":\"X\",\"p\":{\"h\":120,\"w\":120,\"x\":0.781,\"y\":0.731},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":32768,\"k\":\"Y\"}],\"n\":\"Y\",\"p\":{\"h\":120,\"w\":120,\"x\":0.839,\"y\":0.63},\"s\":1,\"sT\":2}]}";
    private float mBaseScale = 1.0f;
    private float scaleByApp = 1.0f;
    private Map<String, String> mPicsMap = new ConcurrentHashMap();
    private final String SP_KEY_FNBTNS_XBOX = "_FnBtnsFromXbox";
    private final String SP_KEY_FNBTNS_KEYBOARD = "_FnBtnsFromKeyboard";
    private int mModeIsCheckedFlags = 0;

    public interface OperateListener {
        void onReset(int i10);

        void onSave(int i10, List<HmVirtualViewBean> list);
    }

    private HmVirtualDeviceManager() {
        reset();
    }

    private String appendKey() {
        return this.mIsUsingLargeLayoutConfig ? "_Large" : "";
    }

    private ThreadPoolExecutor createExecutor() {
        return new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new RejectedExecutionHandler() { // from class: com.haima.hmcp.virtual.HmVirtualDeviceManager.1
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                LogUtils.e(HmVirtualDeviceManager.TAG, "HmVir pics ThreadPoolExecutor rejectedExecution");
            }
        });
    }

    private List<HmVirtualViewBean> ensureListInitialized(List<HmVirtualViewBean> list) {
        return list == null ? new ArrayList() : list;
    }

    private List<HmVirtualViewBean> filterOutFnBtns(List<HmVirtualViewBean> list, List<HmVirtualViewBean> list2, boolean z10) {
        boolean z11;
        boolean z12;
        ArrayList arrayList = new ArrayList();
        if (list2 != null) {
            for (int size = list2.size() - 1; size >= 0; size--) {
                HmVirtualViewBean hmVirtualViewBean = list2.get(size);
                if (hmVirtualViewBean != null && (hmVirtualViewBean.getKeyType() == -1 || hmVirtualViewBean.getKeyType() == -2)) {
                    Iterator it2 = arrayList.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z12 = false;
                            break;
                        }
                        HmVirtualViewBean hmVirtualViewBean2 = (HmVirtualViewBean) it2.next();
                        if (hmVirtualViewBean2 != null && hmVirtualViewBean2.getKeyType() == hmVirtualViewBean.getKeyType()) {
                            z12 = true;
                            break;
                        }
                    }
                    if (!z12) {
                        arrayList.add(hmVirtualViewBean);
                    }
                    if (z10) {
                        list2.remove(size);
                    }
                }
            }
        }
        if (list != null) {
            for (int size2 = list.size() - 1; size2 >= 0; size2--) {
                HmVirtualViewBean hmVirtualViewBean3 = list.get(size2);
                if (hmVirtualViewBean3 != null && (hmVirtualViewBean3.getKeyType() == -1 || hmVirtualViewBean3.getKeyType() == -2)) {
                    Iterator it3 = arrayList.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            z11 = false;
                            break;
                        }
                        HmVirtualViewBean hmVirtualViewBean4 = (HmVirtualViewBean) it3.next();
                        if (hmVirtualViewBean4 != null && hmVirtualViewBean4.getKeyType() == hmVirtualViewBean3.getKeyType()) {
                            z11 = true;
                            break;
                        }
                    }
                    if (!z11) {
                        arrayList.add(hmVirtualViewBean3);
                    }
                    if (z10) {
                        list.remove(size2);
                    }
                }
            }
        }
        return arrayList;
    }

    public static synchronized HmVirtualDeviceManager get() {
        if (mInstances == null) {
            mInstances = new HmVirtualDeviceManager();
        }
        return mInstances;
    }

    private ThreadPoolExecutor getExecutor() {
        ThreadPoolExecutor threadPoolExecutor = this.mExecutor;
        if (threadPoolExecutor == null || threadPoolExecutor.isShutdown()) {
            this.mExecutor = createExecutor();
        }
        return this.mExecutor;
    }

    private HmVirtualViewBean getFnBtnsFromLocal(Context context, int i10) {
        if (context == null) {
            LogUtils.e(TAG, "getFnBtnsFromLocal: context is null");
            return null;
        }
        try {
            String str = TAG;
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            boolean z10 = i10 == 1;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.packageName);
            sb2.append(z10 ? "_FnBtnsFromKeyboard" : "_FnBtnsFromXbox");
            String string = sb2.toString();
            String string2 = sharedPreferences.getString(string, "");
            if (TextUtils.isEmpty(string2)) {
                LogUtils.d(str, "getFnBtnsFromLocal: no fnBtns data found in SharedPreferences for key=" + string);
            } else {
                LogUtils.d(str, "getFnBtnsFromLocal: loading fnBtns json from key=" + string + ", json=" + string2);
                List<HmVirtualViewBean> array = a.parseArray(string2, HmVirtualViewBean.class);
                if (array == null || array.size() <= 0) {
                    LogUtils.d(str, "getFnBtnsFromLocal: fnBtnsList is empty or null");
                } else {
                    for (HmVirtualViewBean hmVirtualViewBean : array) {
                        if (hmVirtualViewBean != null) {
                            int keyType = hmVirtualViewBean.getKeyType();
                            if (i10 == 0 && keyType == -2) {
                                LogUtils.d(TAG, "getFnBtnsFromLocal: found xbox sensitivity button");
                                return hmVirtualViewBean;
                            }
                            if (i10 == 1 && keyType == -1) {
                                LogUtils.d(TAG, "getFnBtnsFromLocal: found keyboard sensitivity button");
                                return hmVirtualViewBean;
                            }
                        }
                    }
                }
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, "getFnBtnsFromLocal error: " + e10.getMessage());
        }
        return null;
    }

    private HmVirtualLayoutBean getSaveLayoutBean(List<HmVirtualViewBean> list, int i10, boolean z10) {
        HmVirtualLayoutBean hmVirtualLayoutBean;
        if (i10 == 0) {
            return null;
        }
        HmVirtualLayoutBean hmVirtualLayoutBean2 = new HmVirtualLayoutBean();
        if (list != null && !list.isEmpty()) {
            List<HmVirtualViewBean> arrayList = new ArrayList<>();
            Iterator<HmVirtualViewBean> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().copy());
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (HmVirtualViewBean hmVirtualViewBean : arrayList) {
                if (hmVirtualViewBean.getKeyType() == 13) {
                    arrayList2.addAll(hmVirtualViewBean.getDrawerList());
                    hmVirtualViewBean.getDrawerList().clear();
                    hmVirtualViewBean.setDrawerList(null);
                    hmVirtualViewBean.setDrawerSelectedBorderColor(null);
                    arrayList3.add(hmVirtualViewBean);
                    if (z10 && hmVirtualViewBean.getDrawerId() != null && (hmVirtualLayoutBean = this.layoutBean) != null && hmVirtualLayoutBean.getConfig() != null && this.layoutBean.getConfig().drawerList != null) {
                        for (HmVirtualViewBean hmVirtualViewBean2 : this.layoutBean.getConfig().drawerList) {
                            if (hmVirtualViewBean2.getDrawerId() != null && hmVirtualViewBean.getDrawerId().longValue() == hmVirtualViewBean2.getDrawerId().longValue()) {
                                hmVirtualViewBean2.setScale(hmVirtualViewBean.getScale());
                                hmVirtualViewBean2.setPosition(hmVirtualViewBean.getPosition());
                            }
                        }
                    }
                }
            }
            arrayList.removeAll(arrayList3);
            arrayList.addAll(arrayList2);
            HmVirtualLayoutBean.ConfigDTO configDTO = new HmVirtualLayoutBean.ConfigDTO();
            hmVirtualLayoutBean2.config = configDTO;
            configDTO.drawerList = arrayList3;
            HmVirtualLayoutBean.ConfigDTO configDTO2 = this.localConfig;
            if (configDTO2 != null) {
                configDTO.pic_common_drawer_icon_MD5 = configDTO2.pic_common_drawer_icon_MD5;
                hmVirtualLayoutBean2.config.pic_common_drawer_icon_url = this.localConfig.pic_common_drawer_icon_url;
                hmVirtualLayoutBean2.config.pic_common_drawer_bg_selected_MD5 = this.localConfig.pic_common_drawer_bg_selected_MD5;
                hmVirtualLayoutBean2.config.pic_common_drawer_bg_selected_url = this.localConfig.pic_common_drawer_bg_selected_url;
                hmVirtualLayoutBean2.config.pic_common_drawer_bg_unselected_MD5 = this.localConfig.pic_common_drawer_bg_unselected_MD5;
                hmVirtualLayoutBean2.config.pic_common_drawer_bg_unselected_url = this.localConfig.pic_common_drawer_bg_unselected_url;
                hmVirtualLayoutBean2.config.drawerSelectedBorderColor = this.localConfig.drawerSelectedBorderColor;
            } else if (getLayoutBean().config != null) {
                hmVirtualLayoutBean2.config.pic_common_drawer_icon_MD5 = getLayoutBean().config.pic_common_drawer_icon_MD5;
                hmVirtualLayoutBean2.config.pic_common_drawer_icon_url = getLayoutBean().config.pic_common_drawer_icon_url;
                hmVirtualLayoutBean2.config.pic_common_drawer_bg_selected_MD5 = getLayoutBean().config.pic_common_drawer_bg_selected_MD5;
                hmVirtualLayoutBean2.config.pic_common_drawer_bg_selected_url = getLayoutBean().config.pic_common_drawer_bg_selected_url;
                hmVirtualLayoutBean2.config.pic_common_drawer_bg_unselected_MD5 = getLayoutBean().config.pic_common_drawer_bg_unselected_MD5;
                hmVirtualLayoutBean2.config.pic_common_drawer_bg_unselected_url = getLayoutBean().config.pic_common_drawer_bg_unselected_url;
                hmVirtualLayoutBean2.config.drawerSelectedBorderColor = getLayoutBean().config.drawerSelectedBorderColor;
            }
            if (i10 == 1) {
                hmVirtualLayoutBean2.setKeyboard(arrayList);
            } else {
                hmVirtualLayoutBean2.setXbox(arrayList);
            }
        }
        return hmVirtualLayoutBean2;
    }

    private boolean isCloudDirectionStyle(HmVirtualViewBean hmVirtualViewBean) {
        if (hmVirtualViewBean == null) {
            return false;
        }
        return (!TextUtils.isEmpty(hmVirtualViewBean.getPicSelectedMD5()) && !TextUtils.isEmpty(hmVirtualViewBean.getPicUnselectedMD5()) && !TextUtils.isEmpty(hmVirtualViewBean.getCrossPicRockerDirectionMD5())) || (!TextUtils.isEmpty(hmVirtualViewBean.getPicSelectedUrl()) && !TextUtils.isEmpty(hmVirtualViewBean.getPicUnselectedUrl()) && !TextUtils.isEmpty(hmVirtualViewBean.getCrossPicRockerDirectionUrl()));
    }

    private void loadLocalBeanList(String str, Context context) {
        HmVirtualLayoutBean hmVirtualLayoutBean;
        String str2 = TAG;
        SharedPreferences sharedPreferences = context.getSharedPreferences(str2, 0);
        String string = sharedPreferences.getString(str + "_0" + appendKey(), "");
        if (!TextUtils.isEmpty(string)) {
            LogUtils.d(str2, "loadLocalXbox=" + string);
            this.localXboxBeanList = a.parseArray(string, HmVirtualViewBean.class);
            HmVirtualViewBean fnBtnsFromLocal = getFnBtnsFromLocal(context, 0);
            if (fnBtnsFromLocal != null) {
                this.localXboxBeanList.add(fnBtnsFromLocal);
            }
            supplementSources(this.localXboxBeanList, HmVirtualDeviceUtils.PicsSupplementType.XBOX);
        }
        String string2 = sharedPreferences.getString(str + "_1" + appendKey(), "");
        if (TextUtils.isEmpty(string2)) {
            return;
        }
        String string3 = sharedPreferences.getString(str + "_config", "");
        LogUtils.d(str2, "loadLocalKeyboard, config =" + string3);
        LogUtils.d(str2, "loadLocalKeyboard=" + string2);
        if (TextUtils.isEmpty(string3)) {
            hmVirtualLayoutBean = null;
        } else {
            hmVirtualLayoutBean = (HmVirtualLayoutBean) a.parseObject(string3, HmVirtualLayoutBean.class);
            this.localConfig = hmVirtualLayoutBean.config;
        }
        processSavedLayoutBean(hmVirtualLayoutBean, a.parseArray(string2, HmVirtualViewBean.class), 1);
        this.localKeyBoardBeanList = hmVirtualLayoutBean.getKeyboard();
        HmVirtualViewBean fnBtnsFromLocal2 = getFnBtnsFromLocal(context, 1);
        if (fnBtnsFromLocal2 != null) {
            this.localKeyBoardBeanList.add(fnBtnsFromLocal2);
        }
        supplementSources(this.localKeyBoardBeanList, HmVirtualDeviceUtils.PicsSupplementType.KEYBOARD);
    }

    private void processDrawer(HmVirtualLayoutBean hmVirtualLayoutBean) {
        Long drawerId;
        if (hmVirtualLayoutBean == null) {
            LogUtils.d(TAG, "processDrawer: data is null");
            return;
        }
        if (hmVirtualLayoutBean.getConfig() == null) {
            LogUtils.d(TAG, "processDrawer: config is null");
            return;
        }
        String str = hmVirtualLayoutBean.getConfig().drawerSelectedBorderColor;
        List<HmVirtualViewBean> drawerList = hmVirtualLayoutBean.getConfig().getDrawerList();
        String str2 = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("processDrawer: drawerList size = ");
        sb2.append(drawerList != null ? drawerList.size() : 0);
        LogUtils.d(str2, sb2.toString());
        if (drawerList == null || drawerList.isEmpty()) {
            LogUtils.d(str2, "processDrawer: drawerList is empty or null");
            return;
        }
        List<HmVirtualViewBean> keyboard = hmVirtualLayoutBean.getKeyboard();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("processDrawer: keyboardList size = ");
        sb3.append(keyboard != null ? keyboard.size() : 0);
        LogUtils.d(str2, sb3.toString());
        if (keyboard == null || keyboard.isEmpty()) {
            LogUtils.d(str2, "processDrawer: keyboardList is empty or null");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (HmVirtualViewBean hmVirtualViewBean : drawerList) {
            if (hmVirtualViewBean != null) {
                Long drawerId2 = hmVirtualViewBean.getDrawerId();
                LogUtils.d(TAG, "processDrawer: processing drawer with id = " + drawerId2);
                if (drawerId2 != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (HmVirtualViewBean hmVirtualViewBean2 : keyboard) {
                        if (hmVirtualViewBean2 != null && hmVirtualViewBean2.getKeyType() != 6 && hmVirtualViewBean2.getKeyType() != 7 && (drawerId = hmVirtualViewBean2.getDrawerId()) != null && drawerId2.longValue() == drawerId.longValue()) {
                            arrayList2.add(hmVirtualViewBean2);
                            LogUtils.d(TAG, "processDrawer: matched keyboard with drawerId = " + drawerId);
                        }
                    }
                    if (!arrayList2.isEmpty()) {
                        if (hmVirtualViewBean.getDrawerList() == null) {
                            hmVirtualViewBean.setDrawerList(new ArrayList());
                        } else {
                            hmVirtualViewBean.getDrawerList().clear();
                        }
                        hmVirtualViewBean.setDrawerSelectedBorderColor(str);
                        hmVirtualViewBean.getDrawerList().addAll(arrayList2);
                        String str3 = TAG;
                        LogUtils.d(str3, "processDrawer: added " + arrayList2.size() + " keyboards to drawer " + drawerId2);
                        keyboard.removeAll(arrayList2);
                        arrayList.add(hmVirtualViewBean);
                        LogUtils.d(str3, "processDrawer: removed matched keyboards from keyboardList, remaining size = " + keyboard.size());
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            LogUtils.d(TAG, "processDrawer: drawerList is empty after processing");
            return;
        }
        keyboard.addAll(arrayList);
        LogUtils.d(TAG, "processDrawer: added drawerList to keyboardList, final keyboardList size = " + keyboard.size());
    }

    private void processFnBtns(HmVirtualLayoutBean hmVirtualLayoutBean) {
        if (hmVirtualLayoutBean == null) {
            LogUtils.d(TAG, "processFnBtns: data is null");
            return;
        }
        List<HmVirtualViewBean> fnBtns = hmVirtualLayoutBean.getFnBtns();
        if (fnBtns == null || fnBtns.size() == 0) {
            LogUtils.d(TAG, "processFnBtns: fnBtns is empty");
            return;
        }
        HmVirtualViewBean hmVirtualViewBean = null;
        HmVirtualViewBean hmVirtualViewBean2 = null;
        for (HmVirtualViewBean hmVirtualViewBean3 : fnBtns) {
            if (hmVirtualViewBean3 != null) {
                int keyType = hmVirtualViewBean3.getKeyType();
                if (keyType == -1 && hmVirtualViewBean == null) {
                    hmVirtualViewBean = hmVirtualViewBean3;
                } else if (keyType == -2 && hmVirtualViewBean2 == null) {
                    hmVirtualViewBean2 = hmVirtualViewBean3;
                }
                if (hmVirtualViewBean != null && hmVirtualViewBean2 != null) {
                    break;
                }
            }
        }
        if (hmVirtualViewBean != null) {
            List<HmVirtualViewBean> listEnsureListInitialized = ensureListInitialized(hmVirtualLayoutBean.getKeyboard());
            hmVirtualViewBean.sensitivityFnBtnChecked = getKeyboardModeIsChecked();
            listEnsureListInitialized.add(hmVirtualViewBean);
            hmVirtualLayoutBean.setKeyboard(listEnsureListInitialized);
        }
        if (hmVirtualViewBean2 != null) {
            List<HmVirtualViewBean> listEnsureListInitialized2 = ensureListInitialized(hmVirtualLayoutBean.getXbox());
            hmVirtualViewBean2.sensitivityFnBtnChecked = getXboxModeIsChecked();
            listEnsureListInitialized2.add(hmVirtualViewBean2);
            hmVirtualLayoutBean.setXbox(listEnsureListInitialized2);
        }
        ArrayList arrayList = new ArrayList();
        if (hmVirtualViewBean != null) {
            arrayList.add(hmVirtualViewBean);
        }
        if (hmVirtualViewBean2 != null) {
            arrayList.add(hmVirtualViewBean2);
        }
        hmVirtualLayoutBean.setFnBtns(arrayList);
    }

    private void processPics(Context context, HmVirtualLayoutBean hmVirtualLayoutBean) {
        if (context == null || hmVirtualLayoutBean == null) {
            return;
        }
        processPicsInConfig(hmVirtualLayoutBean);
        processVirList(hmVirtualLayoutBean.getXbox());
        processVirList(hmVirtualLayoutBean.getKeyboard());
        savePicsToLocalStorage(context);
    }

    private void processPicsInConfig(HmVirtualLayoutBean hmVirtualLayoutBean) {
        HmVirtualLayoutBean.ConfigDTO config = hmVirtualLayoutBean.getConfig();
        if (config != null) {
            savePicsToMemory(config.getPic_common_bg_unselected_MD5(), config.getPic_common_bg_unselected(), "pic_common_bg_unselected");
            savePicsToMemory(config.getPic_common_bg_selected_MD5(), config.getPic_common_bg_selected(), "pic_common_bg_selected");
            savePicsToMemory(config.getPic_rocker_center_MD5(), config.getPic_rocker_center(), "pic_rocker_center");
            savePicsToMemory(config.getPic_rocker_direction_MD5(), config.getPic_rocker_direction(), "pic_rocker_direction");
            savePicsToMemory(config.getPic_common_drawer_icon_MD5(), config.getPic_common_drawer_icon(), "pic_common_drawer_icon");
            savePicsToMemory(config.getPic_common_drawer_bg_selected_MD5(), config.getPic_common_drawer_bg_selected(), "pic_common_drawer_bg_selected");
            savePicsToMemory(config.getPic_common_drawer_bg_unselected_MD5(), config.getPic_common_drawer_bg_unselected(), "pic_common_drawer_bg_unselected");
        }
    }

    private void processSavedLayoutBean(HmVirtualLayoutBean hmVirtualLayoutBean, List<HmVirtualViewBean> list, int i10) {
        Long drawerId;
        HmVirtualLayoutBean hmVirtualLayoutBean2 = hmVirtualLayoutBean == null ? new HmVirtualLayoutBean() : hmVirtualLayoutBean;
        if (hmVirtualLayoutBean2.config == null) {
            hmVirtualLayoutBean2.config = new HmVirtualLayoutBean.ConfigDTO();
        }
        if (list == null || list.isEmpty()) {
            LogUtils.d(TAG, "processSavedLayoutBean: keyboardList is empty or null");
            return;
        }
        HmVirtualLayoutBean.ConfigDTO configDTO = hmVirtualLayoutBean2.config;
        List<HmVirtualViewBean> drawerList = configDTO.getDrawerList();
        if (drawerList == null || drawerList.isEmpty()) {
            if (i10 == 1) {
                hmVirtualLayoutBean2.setKeyboard(list);
            } else {
                hmVirtualLayoutBean2.setXbox(list);
            }
            LogUtils.d(TAG, "processSavedLayoutBean: drawerList is empty or null");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (HmVirtualViewBean hmVirtualViewBean : drawerList) {
            if (hmVirtualViewBean != null) {
                HmVirtualViewBean hmVirtualViewBeanCopy = hmVirtualViewBean.copy();
                hmVirtualViewBeanCopy.setDrawerSelectedBorderColor(configDTO.drawerSelectedBorderColor);
                Long drawerId2 = hmVirtualViewBeanCopy.getDrawerId();
                LogUtils.d(TAG, "processSavedLayoutBean: processing drawer with id = " + drawerId2);
                if (drawerId2 != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (HmVirtualViewBean hmVirtualViewBean2 : list) {
                        if (hmVirtualViewBean2 != null && hmVirtualViewBean2.getKeyType() != 6 && hmVirtualViewBean2.getKeyType() != 7 && (drawerId = hmVirtualViewBean2.getDrawerId()) != null && drawerId2.longValue() == drawerId.longValue()) {
                            arrayList2.add(hmVirtualViewBean2);
                            LogUtils.d(TAG, "processSavedLayoutBean: matched keyboard with drawerId = " + drawerId);
                        }
                    }
                    if (!arrayList2.isEmpty()) {
                        if (hmVirtualViewBeanCopy.getDrawerList() == null) {
                            hmVirtualViewBeanCopy.setDrawerList(new ArrayList());
                        } else {
                            hmVirtualViewBeanCopy.getDrawerList().clear();
                            LogUtils.d(TAG, "processSavedLayoutBean: clear drawer list");
                        }
                        hmVirtualViewBeanCopy.getDrawerList().addAll(arrayList2);
                        String str = TAG;
                        LogUtils.d(str, "processSavedLayoutBean: added " + arrayList2.size() + " keyboards to drawer " + drawerId2);
                        list.removeAll(arrayList2);
                        arrayList.add(hmVirtualViewBeanCopy);
                        LogUtils.d(str, "processSavedLayoutBean: removed matched keyboards from keyboardList, remaining size = " + list.size());
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            LogUtils.d(TAG, "processSavedLayoutBean: drawerList is empty after processing");
            return;
        }
        list.addAll(arrayList);
        hmVirtualLayoutBean2.setKeyboard(list);
        LogUtils.d(TAG, "processSavedLayoutBean: added drawerList to keyboardList, final keyboardList size = " + list.size());
    }

    private void processVirList(List<HmVirtualViewBean> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (HmVirtualViewBean hmVirtualViewBean : list) {
            if (hmVirtualViewBean != null) {
                savePicsToMemory(hmVirtualViewBean.getPicSelectedMD5(), hmVirtualViewBean.getPicSelected(), hmVirtualViewBean.getName() + " pic_selected");
                savePicsToMemory(hmVirtualViewBean.getPicUnselectedMD5(), hmVirtualViewBean.getPicUnselected(), hmVirtualViewBean.getName() + " pic_unselected");
                savePicsToMemory(hmVirtualViewBean.getCrossPicRockerDirectionMD5(), hmVirtualViewBean.getCrossPicRockerDirection(), hmVirtualViewBean.getName() + " cross_pic_rocker_direction");
                savePicsToMemory(hmVirtualViewBean.getPicCenterMD5(), hmVirtualViewBean.getPicCenter(), hmVirtualViewBean.getName() + " pic_center");
                if (hmVirtualViewBean.getKeyType() == 13 && hmVirtualViewBean.getDrawerList() != null) {
                    processVirList(hmVirtualViewBean.getDrawerList());
                }
            }
        }
    }

    private void saveFnBtns(Context context, int i10, List<HmVirtualViewBean> list) {
        boolean z10 = i10 == 1;
        List<HmVirtualViewBean> list2 = z10 ? list : null;
        if (z10) {
            list = null;
        }
        List<HmVirtualViewBean> listFilterOutFnBtns = filterOutFnBtns(list2, list, true);
        String str = TAG;
        LogUtils.e(str, "saveFnBtns start");
        if (listFilterOutFnBtns == null || listFilterOutFnBtns.size() <= 0) {
            return;
        }
        context.getSharedPreferences(str, 0).edit();
        String jSONString = a.toJSONString(listFilterOutFnBtns);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.packageName);
        sb2.append(z10 ? "_FnBtnsFromKeyboard" : "_FnBtnsFromXbox");
        String string = sb2.toString();
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
        editorEdit.putString(string, jSONString);
        editorEdit.apply();
        LogUtils.d(str, "saveFnBtns " + string + " Json = " + jSONString);
    }

    private void savePicsToLocalStorage(final Context context) {
        if (context != null && this.mPicsMap.size() != 0) {
            getExecutor().submit(new Runnable() { // from class: com.haima.hmcp.virtual.HmVirtualDeviceManager.2
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    File file;
                    File file2;
                    BufferedWriter bufferedWriter = null;
                    try {
                        try {
                            try {
                                if (context == null) {
                                    LogUtils.e(HmVirtualDeviceManager.TAG, "savePicsToLocalStorage createPicsCacheDir failed:context is null ");
                                    return;
                                }
                                File file3 = new File(context.getFilesDir(), HmVirtualDeviceUtils.PICS_CACHE_DIR);
                                if (!file3.exists()) {
                                    boolean zMkdirs = file3.mkdirs();
                                    String str = HmVirtualDeviceManager.TAG;
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("savePicsToLocalStorage createPicsCacheDir ");
                                    sb2.append(zMkdirs ? "succeed" : f.f7234h);
                                    LogUtils.e(str, sb2.toString());
                                }
                                file2 = null;
                                for (Map.Entry entry : HmVirtualDeviceManager.this.mPicsMap.entrySet()) {
                                    try {
                                        String str2 = (String) entry.getKey();
                                        String str3 = (String) entry.getValue();
                                        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                                            File file4 = new File(file3, str2);
                                            if (file4.exists()) {
                                                LogUtils.e(HmVirtualDeviceManager.TAG, "savePicsToLocalStorage ignored:" + str2 + " is existed");
                                                HmVirtualDeviceManager.this.mPicsMap.remove(str2);
                                            } else {
                                                File file5 = new File(file3, str2 + ".temp");
                                                try {
                                                    BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(file5));
                                                    try {
                                                        bufferedWriter2.write(str3);
                                                        bufferedWriter2.flush();
                                                        if (file5.renameTo(file4)) {
                                                            LogUtils.d(HmVirtualDeviceManager.TAG, "savePicsToLocalStorage save succeed " + str2);
                                                            HmVirtualDeviceManager.this.mPicsMap.remove(str2);
                                                        } else {
                                                            LogUtils.e(HmVirtualDeviceManager.TAG, "savePicsToLocalStorage save failed " + str2);
                                                        }
                                                        bufferedWriter = bufferedWriter2;
                                                        file2 = file5;
                                                    } catch (IOException e10) {
                                                        e = e10;
                                                        bufferedWriter = bufferedWriter2;
                                                        file2 = file5;
                                                        LogUtils.e(HmVirtualDeviceManager.TAG, "savePicsToLocalStorage Caught IOException:" + e.getMessage());
                                                        if (bufferedWriter != null) {
                                                            bufferedWriter.close();
                                                            if (file2 != null && file2.exists()) {
                                                                file2.delete();
                                                            }
                                                        }
                                                        return;
                                                    } catch (Exception e11) {
                                                        e = e11;
                                                        bufferedWriter = bufferedWriter2;
                                                        file2 = file5;
                                                        LogUtils.e(HmVirtualDeviceManager.TAG, "savePicsToLocalStorage Caught Exception:" + e.getMessage());
                                                        if (bufferedWriter != null) {
                                                            bufferedWriter.close();
                                                            if (file2 != null && file2.exists()) {
                                                                file2.delete();
                                                            }
                                                        }
                                                        return;
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        bufferedWriter = bufferedWriter2;
                                                        file = file5;
                                                        if (bufferedWriter != null) {
                                                            try {
                                                                bufferedWriter.close();
                                                                if (file != null && file.exists()) {
                                                                    file.delete();
                                                                }
                                                            } catch (IOException e12) {
                                                                e12.printStackTrace();
                                                            } catch (Exception e13) {
                                                                e13.printStackTrace();
                                                            }
                                                        }
                                                        throw th;
                                                    }
                                                } catch (IOException e14) {
                                                    e = e14;
                                                } catch (Exception e15) {
                                                    e = e15;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                }
                                            }
                                        }
                                    } catch (IOException e16) {
                                        e = e16;
                                    } catch (Exception e17) {
                                        e = e17;
                                    }
                                }
                                if (bufferedWriter != null) {
                                    bufferedWriter.close();
                                    if (file2 != null && file2.exists()) {
                                        file2.delete();
                                    }
                                }
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (IOException e18) {
                            e = e18;
                            file2 = null;
                        } catch (Exception e19) {
                            e = e19;
                            file2 = null;
                        } catch (Throwable th4) {
                            th = th4;
                            file = null;
                        }
                    } catch (IOException e20) {
                        e20.printStackTrace();
                    } catch (Exception e21) {
                        e21.printStackTrace();
                    }
                }
            });
            return;
        }
        LogUtils.e(TAG, "savePicsToLocalStorage ignored:PicsMap's size is " + this.mPicsMap.size());
    }

    private void supplementSources(List<HmVirtualViewBean> list, HmVirtualDeviceUtils.PicsSupplementType picsSupplementType) {
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<HmVirtualViewBean> it2 = list.iterator();
        while (it2.hasNext()) {
            HmVirtualDeviceUtils.picsSupplement(it2.next(), picsSupplementType);
        }
    }

    public void addPointID(Integer num) {
        try {
            if (this.pointIDList.contains(num)) {
                return;
            }
            this.pointIDList.add(num);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public HmBaseVirtualView convertOneBean2View(HmVirtualViewBean hmVirtualViewBean, Context context, HmVirtualViewListener hmVirtualViewListener, int i10) {
        switch (hmVirtualViewBean.getKeyType()) {
            case -2:
            case -1:
                return new HmVirtualCheckBox(hmVirtualViewBean, context, hmVirtualViewListener, i10);
            case 0:
            default:
                return null;
            case 1:
            case 2:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                return new HmVirtualBtn(hmVirtualViewBean, context, hmVirtualViewListener, i10);
            case 3:
                return isCloudDirectionStyle(hmVirtualViewBean) ? new HmVirtualDirection(hmVirtualViewBean, context, hmVirtualViewListener, i10) : new HmVirtualHandle(hmVirtualViewBean, context, hmVirtualViewListener, i10);
            case 4:
            case 5:
            case 6:
            case 7:
                return new HmVirtualHandle(hmVirtualViewBean, context, hmVirtualViewListener, i10);
            case 13:
                return new HmVirtualDrawer(hmVirtualViewBean, context, hmVirtualViewListener, i10);
        }
    }

    public List<HmBaseVirtualView> convertVirBean2View(List<HmVirtualViewBean> list, Context context, HmVirtualViewListener hmVirtualViewListener, int i10) {
        ArrayList arrayList = new ArrayList();
        Iterator<HmVirtualViewBean> it2 = list.iterator();
        while (it2.hasNext()) {
            HmBaseVirtualView hmBaseVirtualViewConvertOneBean2View = convertOneBean2View(it2.next(), context, hmVirtualViewListener, i10);
            if (hmBaseVirtualViewConvertOneBean2View != null) {
                arrayList.add(hmBaseVirtualViewConvertOneBean2View);
            }
        }
        return arrayList;
    }

    public void deleteLocalKeyboardLayout(Context context) {
        String str = TAG;
        LogUtils.d(str, "deleteLocalKeyboardLayout");
        try {
            this.localKeyBoardBeanList = null;
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
            editorEdit.putString(this.packageName + "_1" + appendKey(), "");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.packageName);
            sb2.append("_FnBtnsFromKeyboard");
            editorEdit.putString(sb2.toString(), "");
            editorEdit.apply();
            OperateListener operateListener = this.operateListener;
            if (operateListener != null) {
                operateListener.onReset(1);
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, "deleteLocalKeyboardLayout error = " + Log.getStackTraceString(e10));
        }
    }

    public void deleteLocalXboxLayout(Context context) {
        String str = TAG;
        LogUtils.d(str, "deleteLocalXboxLayout");
        try {
            this.localXboxBeanList = null;
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
            editorEdit.putString(this.packageName + "_0" + appendKey(), "");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.packageName);
            sb2.append("_FnBtnsFromXbox");
            editorEdit.putString(sb2.toString(), "");
            editorEdit.apply();
            OperateListener operateListener = this.operateListener;
            if (operateListener != null) {
                operateListener.onReset(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            LogUtils.e(TAG, "deleteLocalXboxLayout error = " + e10.getMessage());
        }
    }

    public List<HmVirtualViewBean> filterDrawerData(List<HmVirtualViewBean> list) {
        if (list == null || list.isEmpty()) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (HmVirtualViewBean hmVirtualViewBean : list) {
            if (hmVirtualViewBean != null) {
                if (hmVirtualViewBean.getKeyType() == 13) {
                    arrayList.add(hmVirtualViewBean);
                    List<HmVirtualViewBean> drawerList = hmVirtualViewBean.getDrawerList();
                    if (drawerList != null && !drawerList.isEmpty()) {
                        Iterator<HmVirtualViewBean> it2 = drawerList.iterator();
                        while (it2.hasNext()) {
                            HmVirtualViewBean hmVirtualViewBeanCopy = it2.next().copy();
                            if (hmVirtualViewBeanCopy != null) {
                                arrayList2.add(hmVirtualViewBeanCopy);
                            }
                        }
                    }
                } else {
                    HmVirtualViewBean hmVirtualViewBeanCopy2 = hmVirtualViewBean.copy();
                    if (hmVirtualViewBeanCopy2 != null) {
                        arrayList2.add(hmVirtualViewBeanCopy2);
                    }
                }
            }
        }
        arrayList2.removeAll(arrayList);
        return arrayList2;
    }

    public float getBaseScale() {
        return this.mBaseScale;
    }

    public Bitmap getBitmapByBase64Data(Context context, String str, int i10, int i11) {
        Bitmap bitmapFromLocal;
        boolean z10;
        if (context != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    String str2 = this.mPicsMap.get(str);
                    if (TextUtils.isEmpty(str2)) {
                        bitmapFromLocal = get().getBitmapFromLocal(str, context);
                        z10 = true;
                    } else {
                        bitmapFromLocal = HmVirtualDeviceUtils.base64ToBitmap(str2);
                        z10 = false;
                    }
                    if (bitmapFromLocal == null) {
                        return bitmapFromLocal;
                    }
                    LogUtils.d(TAG, "getBitmapByBase64Data succeed and " + str + " isFromLocal :" + z10);
                    return Bitmap.createScaledBitmap(bitmapFromLocal, i10, i11, true);
                }
            } catch (Exception e10) {
                LogUtils.e(TAG, "getBitmapByBase64Data failed:" + e10.getMessage());
                return null;
            }
        }
        LogUtils.e(TAG, "getBitmapByBase64Data failed:params is invalid");
        return null;
    }

    public Bitmap getBitmapFromLocal(String str, Context context) {
        try {
            if (TextUtils.isEmpty(str)) {
                LogUtils.e(TAG, "getBitmapFromLocal failed:name is empty");
                return null;
            }
            if (context == null) {
                LogUtils.e(TAG, "getBitmapFromLocal failed:context is null");
                return null;
            }
            StringBuilder sb2 = new StringBuilder();
            File file = new File(context.getFilesDir() + File.separator + HmVirtualDeviceUtils.PICS_CACHE_DIR, str);
            if (!file.exists()) {
                LogUtils.e(TAG, "getBitmapFromLocal failed: " + str + " targetFile is not exists");
                return null;
            }
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb2.append(line);
            }
            if (!TextUtils.isEmpty(sb2)) {
                return HmVirtualDeviceUtils.base64ToBitmap(sb2.toString());
            }
            LogUtils.e(TAG, "getBitmapFromLocal failed: " + str + " base64Data is empty");
            return null;
        } catch (Exception e10) {
            LogUtils.e(TAG, "getBitmapFromLocal failed: " + str + e10.getMessage());
            return null;
        }
    }

    public String getCurrentConfigJson() {
        HmVirtualLayoutBean hmVirtualLayoutBean = this.layoutBean;
        if (hmVirtualLayoutBean == null) {
            return "";
        }
        HmVirtualLayoutBean hmVirtualLayoutBeanCopy = hmVirtualLayoutBean.copy();
        List<HmVirtualViewBean> list = this.localKeyBoardBeanList;
        if (list != null) {
            hmVirtualLayoutBeanCopy.setKeyboard(filterDrawerData(list));
            if (hmVirtualLayoutBeanCopy.getConfig() != null && hmVirtualLayoutBeanCopy.getConfig().drawerList != null) {
                Iterator<HmVirtualViewBean> it2 = hmVirtualLayoutBeanCopy.getConfig().drawerList.iterator();
                while (it2.hasNext()) {
                    it2.next().setDrawerList(null);
                }
            }
        } else {
            hmVirtualLayoutBeanCopy.setKeyboard(filterDrawerData(hmVirtualLayoutBeanCopy.getKeyboard()));
        }
        if (this.localXboxBeanList != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<HmVirtualViewBean> it3 = this.localXboxBeanList.iterator();
            while (it3.hasNext()) {
                HmVirtualViewBean hmVirtualViewBeanCopy = it3.next().copy();
                if (hmVirtualViewBeanCopy != null) {
                    arrayList.add(hmVirtualViewBeanCopy);
                }
            }
            hmVirtualLayoutBeanCopy.setXbox(arrayList);
        }
        List<HmVirtualViewBean> listFilterOutFnBtns = filterOutFnBtns(hmVirtualLayoutBeanCopy.getKeyboard(), hmVirtualLayoutBeanCopy.getXbox(), true);
        if (listFilterOutFnBtns != null && listFilterOutFnBtns.size() > 0) {
            hmVirtualLayoutBeanCopy.setFnBtns(listFilterOutFnBtns);
        }
        return JsonUtil.toJsonString(hmVirtualLayoutBeanCopy);
    }

    public List<HmVirtualViewBean> getKeyboardLayout() {
        List<HmVirtualViewBean> list = this.localKeyBoardBeanList;
        if (list != null) {
            return list;
        }
        HmVirtualLayoutBean hmVirtualLayoutBean = this.layoutBean;
        if (hmVirtualLayoutBean == null) {
            return null;
        }
        return hmVirtualLayoutBean.getKeyboard();
    }

    public boolean getKeyboardModeIsChecked() {
        return (this.mModeIsCheckedFlags & 2) != 0;
    }

    public HmVirtualLayoutBean getLayoutBean() {
        return this.layoutBean;
    }

    public String getLayoutPackageName() {
        return this.packageName;
    }

    public HmVirtualLayoutBean.ConfigDTO getLocalConfig() {
        return this.localConfig;
    }

    public float getScaleByApp() {
        return this.scaleByApp;
    }

    public List<HmVirtualViewBean> getXboxLayout() {
        List<HmVirtualViewBean> list = this.localXboxBeanList;
        if (list != null) {
            return list;
        }
        HmVirtualLayoutBean hmVirtualLayoutBean = this.layoutBean;
        if (hmVirtualLayoutBean == null) {
            return null;
        }
        return hmVirtualLayoutBean.getXbox();
    }

    public boolean getXboxModeIsChecked() {
        return (this.mModeIsCheckedFlags & 1) != 0;
    }

    public boolean hasLocalConfig(int i10) {
        if (i10 == 1) {
            return this.localKeyBoardBeanList != null;
        }
        return this.localXboxBeanList != null;
    }

    public boolean isUsePointID(Integer num) {
        return this.pointIDList.contains(num);
    }

    public HmVirtualLayoutBean loadingLayoutFromJson(String str, String str2, Context context) {
        return loadingLayoutFromJson(str, str2, context, true);
    }

    public void removePointID(Integer num) {
        try {
            if (this.pointIDList.contains(num)) {
                this.pointIDList.remove(num);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void reset() {
        LogUtils.d(TAG, "reset()");
        this.localXboxBeanList = null;
        this.localKeyBoardBeanList = null;
        this.pointIDList.clear();
        this.layoutBean = null;
        if (!isAlphaSetByApp) {
            transparency = 1.0f;
        }
        editMode = false;
        if (!isShowRawKeySetByApp) {
            showRawKey = false;
        }
        this.operateListener = null;
    }

    public void resetModeIsCheckedFlags() {
        this.mModeIsCheckedFlags = 0;
    }

    public void restoreSettingsState() {
        setBaseScale(1.0f);
        isAlphaSetByApp = false;
        isShowRawKeySetByApp = false;
        isScaleSetByApp = false;
    }

    public void saveLayout(List<HmVirtualViewBean> list, int i10, Context context, boolean z10) {
        LogUtils.d(TAG, "saveLayout ;type=" + i10);
        try {
            List<HmVirtualViewBean> arrayList = new ArrayList<>();
            Iterator<HmVirtualViewBean> it2 = list.iterator();
            while (it2.hasNext()) {
                HmVirtualViewBean hmVirtualViewBeanCopy = it2.next().copy();
                if (hmVirtualViewBeanCopy != null) {
                    arrayList.add(hmVirtualViewBeanCopy);
                }
            }
            if (i10 == 1) {
                this.localKeyBoardBeanList = arrayList;
            } else {
                this.localXboxBeanList = arrayList;
            }
            OperateListener operateListener = this.operateListener;
            if (operateListener != null) {
                operateListener.onSave(i10, list);
            }
            HmVirtualLayoutBean saveLayoutBean = getSaveLayoutBean(arrayList, i10, z10);
            if (i10 == 1 && saveLayoutBean != null) {
                arrayList = saveLayoutBean.getKeyboard();
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator<HmVirtualViewBean> it3 = arrayList.iterator();
            while (it3.hasNext()) {
                HmVirtualViewBean hmVirtualViewBeanCopy2 = it3.next().copy();
                if (hmVirtualViewBeanCopy2 != null) {
                    arrayList2.add(hmVirtualViewBeanCopy2);
                }
            }
            saveFnBtns(context, i10, arrayList2);
            String jSONString = a.toJSONString(arrayList2);
            String str = TAG;
            LogUtils.d(str, "save Json = " + jSONString);
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
            editorEdit.putString(this.packageName + "_" + i10 + appendKey(), jSONString);
            editorEdit.apply();
            if (saveLayoutBean != null) {
                saveLayoutBean.setXbox(null);
                saveLayoutBean.setKeyboard(null);
                String jSONString2 = a.toJSONString(saveLayoutBean);
                LogUtils.d(str, "config save Json = " + jSONString2);
                SharedPreferences.Editor editorEdit2 = context.getSharedPreferences(str, 0).edit();
                editorEdit2.putString(this.packageName + "_config", jSONString2);
                editorEdit2.apply();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            LogUtils.e(TAG, "saveLayout error = " + e10.getMessage());
        }
    }

    public void savePicsToMemory(String str, String str2, String str3) {
        LogUtils.d(TAG, "savePicsToMemory : " + str3 + "  " + str + " " + str2);
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.mPicsMap.put(str, str2);
    }

    public void setBaseScale(float f10) {
        this.mBaseScale = f10;
    }

    public void setIsUsingLargeLayoutConfig(boolean z10) {
        this.mIsUsingLargeLayoutConfig = z10;
    }

    public void setKeyboardModeIsChecked(boolean z10) {
        this.mModeIsCheckedFlags = (z10 ? 2 : 0) | (this.mModeIsCheckedFlags & (-3));
    }

    public void setListener(OperateListener operateListener) {
        this.operateListener = operateListener;
    }

    public void setScaleByApp(float f10) {
        this.scaleByApp = f10;
    }

    public void setTransparency(float f10) {
        LogUtils.d(TAG, "updateTransparency  " + f10);
        transparency = f10;
        if (f10 <= 0.0f) {
            transparency = 0.01f;
        } else if (f10 > 1.0f) {
            transparency = 1.0f;
        }
    }

    public void setXboxModeIsChecked(boolean z10) {
        this.mModeIsCheckedFlags = (z10 ? 1 : 0) | (this.mModeIsCheckedFlags & (-2));
    }

    public void updateContainerWH(int i10, int i11) {
        rawRootPoint = new Point(i10, i11);
        containerWidth = i10;
        containerHeight = i11;
        LogUtils.d(TAG, "updateContainerWH;" + i10 + ";" + i11 + ";" + containerWidth + ";" + containerHeight);
    }

    public HmVirtualLayoutBean loadingLayoutFromJson(String str, String str2, Context context, boolean z10) {
        LogUtils.d(TAG, "load json = " + str);
        reset();
        if (TextUtils.isEmpty(str)) {
            str = "{\"config\":{\"default_layout\":\"\",\"xbox_alpha\":1},\"keyboard\":[],\"mouse\":{\"btn_sensitivity\":1,\"mode\":2,\"sensitivity\":1},\"xbox\":[{\"kT\":1,\"ks\":[{\"c\":0,\"k\":\"LT\"}],\"n\":\"LT\",\"p\":{\"h\":144,\"w\":144,\"x\":0.062,\"y\":0.222},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":256,\"k\":\"LB\"}],\"n\":\"LB\",\"p\":{\"h\":144,\"w\":144,\"x\":0.062,\"y\":0.378},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":0,\"k\":\"RT\"}],\"n\":\"RT\",\"p\":{\"h\":144,\"w\":144,\"x\":0.863,\"y\":0.222},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":512,\"k\":\"RB\"}],\"n\":\"RB\",\"p\":{\"h\":144,\"w\":144,\"x\":0.863,\"y\":0.378},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":16,\"k\":\"START\"}],\"n\":\"START\",\"p\":{\"h\":96,\"w\":96,\"x\":0.509,\"y\":0.033},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":32,\"k\":\"SELECT\"}],\"n\":\"SELECT\",\"p\":{\"h\":96,\"w\":96,\"x\":0.441,\"y\":0.033},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":64,\"k\":\"LS\"}],\"n\":\"LS\",\"p\":{\"h\":120,\"w\":120,\"x\":0.01,\"y\":0.519},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":128,\"k\":\"RS\"}],\"n\":\"RS\",\"p\":{\"h\":120,\"w\":120,\"x\":0.927,\"y\":0.519},\"s\":1,\"sT\":2},{\"kT\":4,\"ks\":[{\"c\":0,\"k\":\"LR\"}],\"n\":\"LR\",\"p\":{\"h\":320,\"w\":320,\"x\":0.083,\"y\":0.611},\"s\":1,\"sT\":2},{\"kT\":3,\"ks\":[{\"c\":1,\"k\":\"UP\"},{\"c\":2,\"k\":\"DOWN\"},{\"c\":4,\"k\":\"LEFT\"},{\"c\":8,\"k\":\"RIGHT\"}],\"n\":\"DIRECTION\",\"p\":{\"h\":240,\"w\":240,\"x\":0.312,\"y\":0.722},\"s\":1,\"sT\":2},{\"kT\":5,\"ks\":[{\"c\":0,\"k\":\"RR\"}],\"n\":\"RR\",\"p\":{\"h\":240,\"w\":240,\"x\":0.562,\"y\":0.722},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":4096,\"k\":\"A\"}],\"n\":\"A\",\"p\":{\"h\":120,\"w\":120,\"x\":0.839,\"y\":0.833},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":8192,\"k\":\"B\"}],\"n\":\"B\",\"p\":{\"h\":120,\"w\":120,\"x\":0.896,\"y\":0.731},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":16384,\"k\":\"X\"}],\"n\":\"X\",\"p\":{\"h\":120,\"w\":120,\"x\":0.781,\"y\":0.731},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":32768,\"k\":\"Y\"}],\"n\":\"Y\",\"p\":{\"h\":120,\"w\":120,\"x\":0.839,\"y\":0.63},\"s\":1,\"sT\":2}]}";
        }
        this.packageName = str2;
        if (containerWidth == 0 || containerHeight == 0) {
            Point displayMetrics = HmVirtualDeviceUtils.getDisplayMetrics(context);
            updateContainerWH(displayMetrics.x, displayMetrics.y);
        }
        try {
            HmVirtualLayoutBean hmVirtualLayoutBean = (HmVirtualLayoutBean) a.parseObject(str, HmVirtualLayoutBean.class);
            this.layoutBean = hmVirtualLayoutBean;
            processDrawer(hmVirtualLayoutBean);
            processFnBtns(this.layoutBean);
            processPics(context, this.layoutBean);
            if (this.layoutBean.getConfig() != null && !isAlphaSetByApp) {
                setTransparency(this.layoutBean.getConfig().getXbox_alpha());
            }
            if (z10) {
                loadLocalBeanList(str2, context);
            }
            return this.layoutBean;
        } catch (Exception e10) {
            LogUtils.e(TAG, "loadingLayoutFromJson error " + Log.getStackTraceString(e10));
            return this.layoutBean;
        }
    }

    public Bitmap getBitmapByBase64Data(Context context, String str) {
        Bitmap bitmapFromLocal;
        if (context != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    String str2 = this.mPicsMap.get(str);
                    if (!TextUtils.isEmpty(str2)) {
                        bitmapFromLocal = HmVirtualDeviceUtils.base64ToBitmap(str2);
                    } else {
                        bitmapFromLocal = get().getBitmapFromLocal(str, context);
                    }
                    return bitmapFromLocal;
                }
            } catch (Exception e10) {
                LogUtils.e(TAG, "getBitmapByBase64Data failed:" + e10.getMessage());
                return null;
            }
        }
        LogUtils.e(TAG, "getBitmapByBase64Data failed:params is invalid");
        return null;
    }
}
