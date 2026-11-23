package com.haima.hmcp.business;

import android.text.TextUtils;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.core.view.InputDeviceCompat;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.JoyStickBean;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.HmInputDeviceManager;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes5.dex */
public class SwitchControllerManager {
    private static final int JOY_CON_L_PRODUCT_ID = 8198;
    public static final int JOY_CON_MODE_COMBINED = 1;
    public static final int JOY_CON_MODE_SEPARATE = 0;
    private static final int JOY_CON_R_PRODUCT_ID = 8199;
    public static final int JOY_CON_TYPE_LEFT = 1;
    public static final int JOY_CON_TYPE_NONE = 0;
    public static final int JOY_CON_TYPE_RIGHT = 2;
    private static final String KEY_JOY_CON_ENABLE = "switch_joy_con_enable";
    private static final String KEY_JOY_CON_NAME_KEYWORDS_LIST = "switch_joy_con_name_keywords_list";
    private static final String KEY_JOY_CON_WORK_MODE = "switch_joy_con_work_mode";
    private static final String KEY_SWITCH_JOY_CON_LEFT_PRODUCT_ID_LIST = "switch_joy_con_left_product_id_list";
    private static final String KEY_SWITCH_JOY_CON_RIGHT_PRODUCT_ID_LIST = "switch_joy_con_right_product_id_list";
    private static final String KEY_SWITCH_VENDOR_ID_LIST = "switch_joy_con_vendor_id_list";
    private static final int NINTENDO_VENDOR_ID = 1406;
    private static final String TAG = "SwitchControllerManager";
    private final ArrayList<JoyConCombine> combineJoyConList;
    private boolean enable;
    private int joyConWorkMode;
    private final ArrayList<String> leftJoyConProductIdList;
    private final ArrayList<ArrayList<String>> nameKeywordsList;
    private final ArrayList<String> rightJoyConProductIdList;
    private final ArrayList<String> vendorIdList;
    private final ArrayList<Integer> x86GamePadKeyEventReportList;
    private final ArrayList<Integer> x86GamePadMotionEventReportList;

    private static class JoyConCombine {
        private int group;
        private JoyStickBean joyBeanLeft = new JoyStickBean();
        private JoyStickBean joyBeanRight = new JoyStickBean();
        private JoyConDevice left;
        private JoyConDevice right;

        public JoyConCombine(int i10) {
            this.group = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void combineLeft(InputEvent inputEvent, JoyStickBean joyStickBean) {
            if (inputEvent == null || joyStickBean == null) {
                return;
            }
            if (inputEvent instanceof MotionEvent) {
                float f10 = joyStickBean.L_X;
                JoyStickBean joyStickBean2 = this.joyBeanLeft;
                if (f10 == joyStickBean2.L_X && joyStickBean.L_Y == joyStickBean2.L_Y) {
                    return;
                }
                joyStickBean2.L_X = f10;
                joyStickBean2.L_Y = joyStickBean.L_Y;
                return;
            }
            boolean z10 = joyStickBean.L1;
            JoyStickBean joyStickBean3 = this.joyBeanLeft;
            if (z10 != joyStickBean3.L1) {
                joyStickBean3.L1 = z10;
            }
            boolean z11 = joyStickBean.L2;
            if (z11 != joyStickBean3.L2) {
                joyStickBean3.L2 = z11;
            }
            boolean z12 = joyStickBean.LS;
            if (z12 != joyStickBean3.LS) {
                joyStickBean3.LS = z12;
            }
            if (!equalsObjects(joyStickBean.L2AxisValue, joyStickBean3.L2AxisValue)) {
                this.joyBeanLeft.L2AxisValue = joyStickBean.L2AxisValue;
            }
            boolean z13 = joyStickBean.UP;
            JoyStickBean joyStickBean4 = this.joyBeanLeft;
            if (z13 != joyStickBean4.UP) {
                joyStickBean4.UP = z13;
            }
            boolean z14 = joyStickBean.DOWN;
            if (z14 != joyStickBean4.DOWN) {
                joyStickBean4.DOWN = z14;
            }
            boolean z15 = joyStickBean.LEFT;
            if (z15 != joyStickBean4.LEFT) {
                joyStickBean4.LEFT = z15;
            }
            boolean z16 = joyStickBean.RIGHT;
            if (z16 != joyStickBean4.RIGHT) {
                joyStickBean4.RIGHT = z16;
            }
            boolean z17 = joyStickBean.SELECT;
            if (z17 != joyStickBean4.SELECT) {
                joyStickBean4.SELECT = z17;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void combineRight(InputEvent inputEvent, JoyStickBean joyStickBean) {
            if (inputEvent == null || joyStickBean == null) {
                return;
            }
            if (inputEvent instanceof MotionEvent) {
                float f10 = joyStickBean.R_X;
                JoyStickBean joyStickBean2 = this.joyBeanRight;
                if (f10 == joyStickBean2.R_X && joyStickBean.R_Y == joyStickBean2.R_Y) {
                    return;
                }
                joyStickBean2.R_X = f10;
                joyStickBean2.R_Y = joyStickBean.R_Y;
                return;
            }
            boolean z10 = joyStickBean.R1;
            JoyStickBean joyStickBean3 = this.joyBeanRight;
            if (z10 != joyStickBean3.R1) {
                joyStickBean3.R1 = z10;
            }
            boolean z11 = joyStickBean.R2;
            if (z11 != joyStickBean3.R2) {
                joyStickBean3.R2 = z11;
            }
            boolean z12 = joyStickBean.RS;
            if (z12 != joyStickBean3.RS) {
                joyStickBean3.RS = z12;
            }
            if (!equalsObjects(joyStickBean.R2AxisValue, joyStickBean3.R2AxisValue)) {
                this.joyBeanRight.R2AxisValue = joyStickBean.R2AxisValue;
            }
            boolean z13 = joyStickBean.X;
            JoyStickBean joyStickBean4 = this.joyBeanRight;
            if (z13 != joyStickBean4.X) {
                joyStickBean4.X = z13;
            }
            boolean z14 = joyStickBean.Y;
            if (z14 != joyStickBean4.Y) {
                joyStickBean4.Y = z14;
            }
            boolean z15 = joyStickBean.A;
            if (z15 != joyStickBean4.A) {
                joyStickBean4.A = z15;
            }
            boolean z16 = joyStickBean.B;
            if (z16 != joyStickBean4.B) {
                joyStickBean4.B = z16;
            }
            boolean z17 = joyStickBean.START;
            if (z17 != joyStickBean4.START) {
                joyStickBean4.START = z17;
            }
        }

        private boolean equalsObjects(Object obj, Object obj2) {
            return obj == obj2 || (obj != null && obj.equals(obj2));
        }

        public void addLeft(JoyConDevice joyConDevice) {
            this.left = joyConDevice;
            LogUtils.d(SwitchControllerManager.TAG, "group " + this.group + ": left joy-con added");
        }

        public void addRight(JoyConDevice joyConDevice) {
            this.right = joyConDevice;
            LogUtils.d(SwitchControllerManager.TAG, "group " + this.group + ": right joy-con added");
        }

        public Integer getIndex() {
            JoyConDevice joyConDevice = this.left;
            if (joyConDevice == null && this.right == null) {
                return null;
            }
            if (joyConDevice == null) {
                return Integer.valueOf(this.right.getIndex());
            }
            return this.right == null ? Integer.valueOf(joyConDevice.getIndex()) : Integer.valueOf(Math.min(joyConDevice.getIndex(), this.right.getIndex()));
        }

        public boolean remove(int i10) {
            JoyConDevice joyConDevice = this.left;
            if (joyConDevice != null && joyConDevice.getId() == i10) {
                this.left = null;
                LogUtils.d(SwitchControllerManager.TAG, "group " + this.group + ": left joy-con removed");
                return true;
            }
            JoyConDevice joyConDevice2 = this.right;
            if (joyConDevice2 == null || joyConDevice2.getId() != i10) {
                return false;
            }
            this.right = null;
            LogUtils.d(SwitchControllerManager.TAG, "group " + this.group + ": right joy-con removed");
            return true;
        }

        public String toString() {
            return "JoyConCombine{left=" + this.left + ", right=" + this.right + ", joyBeanLeft=" + this.joyBeanLeft + ", joyBeanRight=" + this.joyBeanRight + ", group=" + this.group + '}';
        }
    }

    private static class JoyConDevice {
        private InputDevice device;
        private int index;

        public JoyConDevice(InputDevice inputDevice, int i10) {
            this.device = inputDevice;
            this.index = i10;
        }

        public InputDevice getDevice() {
            return this.device;
        }

        public int getId() {
            InputDevice inputDevice = this.device;
            if (inputDevice != null) {
                return inputDevice.getId();
            }
            return -1;
        }

        public int getIndex() {
            return this.index;
        }

        public void setDevice(InputDevice inputDevice) {
            this.device = inputDevice;
        }

        public void setIndex(int i10) {
            this.index = i10;
        }

        public String toString() {
            return "JoyConDevice{device=" + this.device + ", index=" + this.index + '}';
        }
    }

    private static class SingletonHelper {
        private static final SwitchControllerManager INSTANCE = new SwitchControllerManager();

        private SingletonHelper() {
        }
    }

    private boolean checkDeviceNameMatch(String str) {
        boolean z10;
        if (!TextUtils.isEmpty(str) && !this.nameKeywordsList.isEmpty()) {
            String lowerCase = str.toLowerCase();
            for (ArrayList<String> arrayList : this.nameKeywordsList) {
                Iterator<String> it2 = arrayList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z10 = true;
                        break;
                    }
                    if (!lowerCase.contains(it2.next())) {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    LogUtils.d(TAG, "checkDeviceNameMatch--> device name: " + str + " matches keywords: " + arrayList);
                    return true;
                }
            }
            LogUtils.d(TAG, "checkDeviceNameMatch--> device name: " + str + " does not match any keywords");
        }
        return false;
    }

    private void combineJoyConData(JoyStickBean joyStickBean, JoyStickBean joyStickBean2, JoyStickBean joyStickBean3) {
        if (joyStickBean == null || joyStickBean2 == null || joyStickBean3 == null) {
            return;
        }
        boolean z10 = joyStickBean.L1;
        boolean z11 = joyStickBean2.L1;
        if (z10 != z11) {
            joyStickBean.L1 = z11;
        }
        boolean z12 = joyStickBean.L2;
        boolean z13 = joyStickBean2.L2;
        if (z12 != z13) {
            joyStickBean.L2 = z13;
        }
        float f10 = joyStickBean.L_X;
        float f11 = joyStickBean2.L_X;
        if (f10 != f11) {
            joyStickBean.L_X = f11;
        }
        float f12 = joyStickBean.L_Y;
        float f13 = joyStickBean2.L_Y;
        if (f12 != f13) {
            joyStickBean.L_Y = f13;
        }
        boolean z14 = joyStickBean.LS;
        boolean z15 = joyStickBean2.LS;
        if (z14 != z15) {
            joyStickBean.LS = z15;
        }
        if (!equalsObjects(joyStickBean.L2AxisValue, joyStickBean2.L2AxisValue)) {
            joyStickBean.L2AxisValue = joyStickBean2.L2AxisValue;
        }
        boolean z16 = joyStickBean.UP;
        boolean z17 = joyStickBean2.UP;
        if (z16 != z17) {
            joyStickBean.UP = z17;
        }
        boolean z18 = joyStickBean.DOWN;
        boolean z19 = joyStickBean2.DOWN;
        if (z18 != z19) {
            joyStickBean.DOWN = z19;
        }
        boolean z20 = joyStickBean.LEFT;
        boolean z21 = joyStickBean2.LEFT;
        if (z20 != z21) {
            joyStickBean.LEFT = z21;
        }
        boolean z22 = joyStickBean.RIGHT;
        boolean z23 = joyStickBean2.RIGHT;
        if (z22 != z23) {
            joyStickBean.RIGHT = z23;
        }
        boolean z24 = joyStickBean.SELECT;
        boolean z25 = joyStickBean2.SELECT;
        if (z24 != z25) {
            joyStickBean.SELECT = z25;
        }
        boolean z26 = joyStickBean.R1;
        boolean z27 = joyStickBean3.R1;
        if (z26 != z27) {
            joyStickBean.R1 = z27;
        }
        boolean z28 = joyStickBean.R2;
        boolean z29 = joyStickBean3.R2;
        if (z28 != z29) {
            joyStickBean.R2 = z29;
        }
        float f14 = joyStickBean.R_X;
        float f15 = joyStickBean3.R_X;
        if (f14 != f15) {
            joyStickBean.R_X = f15;
        }
        float f16 = joyStickBean.R_Y;
        float f17 = joyStickBean3.R_Y;
        if (f16 != f17) {
            joyStickBean.R_Y = f17;
        }
        boolean z30 = joyStickBean.RS;
        boolean z31 = joyStickBean3.RS;
        if (z30 != z31) {
            joyStickBean.RS = z31;
        }
        if (!equalsObjects(joyStickBean.R2AxisValue, joyStickBean3.R2AxisValue)) {
            joyStickBean.R2AxisValue = joyStickBean3.R2AxisValue;
        }
        boolean z32 = joyStickBean.X;
        boolean z33 = joyStickBean3.X;
        if (z32 != z33) {
            joyStickBean.X = z33;
        }
        boolean z34 = joyStickBean.Y;
        boolean z35 = joyStickBean3.Y;
        if (z34 != z35) {
            joyStickBean.Y = z35;
        }
        boolean z36 = joyStickBean.A;
        boolean z37 = joyStickBean3.A;
        if (z36 != z37) {
            joyStickBean.A = z37;
        }
        boolean z38 = joyStickBean.B;
        boolean z39 = joyStickBean3.B;
        if (z38 != z39) {
            joyStickBean.B = z39;
        }
        boolean z40 = joyStickBean.START;
        boolean z41 = joyStickBean3.START;
        if (z40 != z41) {
            joyStickBean.START = z41;
        }
    }

    private boolean equalsObjects(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private boolean findLeftJoyConProductId(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return this.leftJoyConProductIdList.contains(str);
    }

    private boolean findRightJoyConProductId(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return this.rightJoyConProductIdList.contains(str);
    }

    private boolean findVendorId(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return this.vendorIdList.contains(str);
    }

    public static SwitchControllerManager getInstance() {
        return SingletonHelper.INSTANCE;
    }

    private int getJoyConIndex(InputEvent inputEvent, int i10) {
        if (inputEvent == null || inputEvent.getDevice() == null) {
            LogUtils.d(TAG, "getJoyConIndex--> event or device is null, return original index: " + i10);
            return i10;
        }
        int id2 = inputEvent.getDevice().getId();
        for (JoyConCombine joyConCombine : this.combineJoyConList) {
            if (joyConCombine != null) {
                boolean z10 = joyConCombine.left != null && joyConCombine.left.getId() == id2;
                boolean z11 = joyConCombine.right != null && joyConCombine.right.getId() == id2;
                if (z10 || z11) {
                    Integer index = joyConCombine.getIndex();
                    if (index != null) {
                        LogUtils.d(TAG, "getJoyConIndex--> found matching device in group " + joyConCombine.group + ", left match: " + z10 + ", right match: " + z11 + ", min index: " + index);
                        return index.intValue();
                    }
                }
            }
        }
        LogUtils.d(TAG, "getJoyConIndex--> no matching device found, return original index: " + i10);
        return i10;
    }

    private int getJoyConType(InputDevice inputDevice) {
        int i10 = 0;
        if (inputDevice == null) {
            LogUtils.d(TAG, "getJoyConType--> device is null");
            return 0;
        }
        if (!isJoyCon(inputDevice)) {
            LogUtils.i(TAG, "getJoyConType--> is not joy-con device");
            return 0;
        }
        int productId = inputDevice.getProductId();
        if (isLeftJoyConProduct(productId)) {
            i10 = 1;
        } else if (isRightJoyConProduct(productId)) {
            i10 = 2;
        }
        LogUtils.d(TAG, "getJoyConType--> productId: " + productId + ", type: " + i10);
        return i10;
    }

    private boolean isEnable() {
        return this.enable;
    }

    private boolean isLeftJoyConProduct(int i10) {
        boolean zFindLeftJoyConProductId = findLeftJoyConProductId(String.valueOf(i10));
        if (zFindLeftJoyConProductId) {
            LogUtils.d(TAG, "product id: " + i10 + " is in left list");
        } else {
            LogUtils.d(TAG, "product id: " + i10 + " is not in left list");
        }
        if (zFindLeftJoyConProductId) {
            return zFindLeftJoyConProductId;
        }
        return i10 == JOY_CON_L_PRODUCT_ID;
    }

    private boolean isNintendoDevice(int i10) {
        boolean zFindVendorId = findVendorId(String.valueOf(i10));
        if (zFindVendorId) {
            LogUtils.d(TAG, "vendor id: " + i10 + " is in list");
        } else {
            LogUtils.d(TAG, "vendor id: " + i10 + " is not in list");
        }
        if (zFindVendorId) {
            return zFindVendorId;
        }
        return i10 == NINTENDO_VENDOR_ID;
    }

    private boolean isRightJoyConProduct(int i10) {
        boolean zFindRightJoyConProductId = findRightJoyConProductId(String.valueOf(i10));
        if (zFindRightJoyConProductId) {
            LogUtils.d(TAG, "product id: " + i10 + " is in right list");
        } else {
            LogUtils.d(TAG, "product id: " + i10 + " is not in right list");
        }
        if (zFindRightJoyConProductId) {
            return zFindRightJoyConProductId;
        }
        return i10 == 8199;
    }

    private void parseLeftJoyConProductIdList(HashMap<String, String> map) {
        if (map == null) {
            LogUtils.d(TAG, "parseLeftJoyConProductIdList--> configs is null");
            return;
        }
        String str = map.get("switch_joy_con_left_product_id_list");
        if (TextUtils.isEmpty(str)) {
            LogUtils.d(TAG, "parseLeftJoyConProductIdList--> left joy-con product id list not set");
            return;
        }
        LogUtils.i(TAG, "parseLeftJoyConProductIdList--> left joy-con product id list: " + str);
        try {
            JSONArray jSONArray = new JSONArray(str);
            this.leftJoyConProductIdList.clear();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                String string = jSONArray.getString(i10);
                if (!TextUtils.isEmpty(string)) {
                    this.leftJoyConProductIdList.add(string);
                }
            }
            LogUtils.d(TAG, "parseLeftJoyConProductIdList--> parsed left joy-con product id list: " + this.leftJoyConProductIdList);
        } catch (Exception e10) {
            LogUtils.d(TAG, "parseLeftJoyConProductIdList--> parse left joy-con product id list failed: " + str);
            e10.printStackTrace();
        }
    }

    private void parseNameKeywordsList(HashMap<String, String> map) {
        if (map == null) {
            LogUtils.d(TAG, "parseNameKeywordsList--> configs is null");
            return;
        }
        String str = map.get("switch_joy_con_name_keywords_list");
        if (TextUtils.isEmpty(str)) {
            LogUtils.d(TAG, "parseNameKeywordsList--> name keywords list not set");
            return;
        }
        LogUtils.i(TAG, "parseNameKeywordsList--> name keywords list: " + str);
        try {
            JSONArray jSONArray = new JSONArray(str);
            this.nameKeywordsList.clear();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONArray jSONArray2 = jSONArray.getJSONArray(i10);
                ArrayList<String> arrayList = new ArrayList<>();
                for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                    String string = jSONArray2.getString(i11);
                    if (!TextUtils.isEmpty(string)) {
                        arrayList.add(string.toLowerCase());
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.nameKeywordsList.add(arrayList);
                }
            }
            LogUtils.d(TAG, "parseNameKeywordsList--> parsed name keywords list: " + this.nameKeywordsList);
        } catch (Exception e10) {
            LogUtils.d(TAG, "parseNameKeywordsList--> parse name keywords list failed: " + str);
            e10.printStackTrace();
        }
    }

    private void parseRightJoyConProductIdList(HashMap<String, String> map) {
        if (map == null) {
            LogUtils.d(TAG, "parseRightJoyConProductIdList--> configs is null");
            return;
        }
        String str = map.get("switch_joy_con_right_product_id_list");
        if (TextUtils.isEmpty(str)) {
            LogUtils.d(TAG, "parseRightJoyConProductIdList--> right joy-con product id list not set");
            return;
        }
        LogUtils.i(TAG, "parseRightJoyConProductIdList--> right joy-con product id list: " + str);
        try {
            JSONArray jSONArray = new JSONArray(str);
            this.rightJoyConProductIdList.clear();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                String string = jSONArray.getString(i10);
                if (!TextUtils.isEmpty(string)) {
                    this.rightJoyConProductIdList.add(string);
                }
            }
            LogUtils.d(TAG, "parseRightJoyConProductIdList--> parsed right joy-con product id list: " + this.rightJoyConProductIdList);
        } catch (Exception e10) {
            LogUtils.d(TAG, "parseRightJoyConProductIdList--> parse right joy-con product id list failed: " + str);
            e10.printStackTrace();
        }
    }

    private void parseVendorIdList(HashMap<String, String> map) {
        if (map == null) {
            LogUtils.i(TAG, "parseVendorIdList--> configs is null");
            return;
        }
        String str = map.get("switch_joy_con_vendor_id_list");
        if (TextUtils.isEmpty(str)) {
            LogUtils.i(TAG, "parseVendorIdList--> vendor id list not set");
            return;
        }
        LogUtils.i(TAG, "parseVendorIdList--> vendor id list: " + str);
        try {
            JSONArray jSONArray = new JSONArray(str);
            this.vendorIdList.clear();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                String string = jSONArray.getString(i10);
                if (!TextUtils.isEmpty(string)) {
                    this.vendorIdList.add(string);
                }
            }
            LogUtils.d(TAG, "parseVendorIdList--> parsed vendor id list: " + this.vendorIdList);
        } catch (Exception e10) {
            LogUtils.d(TAG, "parseVendorIdList--> parse vendor id list failed: " + str);
            e10.printStackTrace();
        }
    }

    private void parseWorkEnable(HashMap<String, String> map) {
        if (map == null) {
            LogUtils.d(TAG, "parseWorkEnable--> configs is null, use default " + this.enable);
            return;
        }
        String str = map.get("switch_joy_con_enable");
        if (TextUtils.isEmpty(str)) {
            LogUtils.d(TAG, "parseWorkEnable--> enable not set, use default " + this.enable);
            return;
        }
        LogUtils.i(TAG, "parseWorkEnable--> enable: " + str);
        try {
            this.enable = Boolean.parseBoolean(str);
        } catch (Exception e10) {
            LogUtils.d(TAG, "parseWorkEnable--> parse enable failed, use default " + this.enable);
            e10.printStackTrace();
        }
    }

    private void parseWorkModel(HashMap<String, String> map) {
        if (map == null) {
            LogUtils.d(TAG, "parseWorkModel--> configs is null, use combined mode");
            this.joyConWorkMode = 1;
            return;
        }
        String str = map.get("switch_joy_con_work_mode");
        if (str == null) {
            LogUtils.d(TAG, "parseWorkModel--> work mode not set, use combined mode");
            this.joyConWorkMode = 1;
            return;
        }
        String str2 = TAG;
        LogUtils.i(str2, "parseWorkModel--> work mode: " + str);
        try {
            int i10 = Integer.parseInt(str);
            if (i10 == 0 || i10 == 1) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("parseWorkModel--> mode: ");
                sb2.append(i10 == 0 ? "separate" : "combined");
                LogUtils.d(str2, sb2.toString());
                this.joyConWorkMode = i10;
                return;
            }
            LogUtils.d(str2, "parseWorkModel--> invalid mode: " + i10 + ", use combined mode");
            this.joyConWorkMode = 1;
        } catch (NumberFormatException unused) {
            LogUtils.d(TAG, "parseWorkModel--> parse mode failed: " + str + ", use combined mode");
            this.joyConWorkMode = 1;
        }
    }

    public boolean addDevice(InputDevice inputDevice, int i10) {
        boolean z10;
        boolean z11 = false;
        if (inputDevice == null) {
            LogUtils.d(TAG, "addDevice--> device is null");
            return false;
        }
        String str = TAG;
        LogUtils.i(str, "addDevice--> device = " + inputDevice + ", \nindex: " + i10);
        if (!HmInputDeviceManager.isJoyStick(inputDevice)) {
            LogUtils.i(str, "addDevice--> is not game-pad device");
            return false;
        }
        int joyConType = getJoyConType(inputDevice);
        int id2 = inputDevice.getId();
        Iterator<JoyConCombine> it2 = this.combineJoyConList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z10 = false;
                break;
            }
            JoyConCombine next = it2.next();
            if (next != null) {
                if (next.left != null && next.left.getId() == id2) {
                    LogUtils.i(TAG, id2 + " is exist in " + next.group + " group left device");
                } else if (next.right != null && next.right.getId() == id2) {
                    LogUtils.i(TAG, id2 + " is exist in " + next.group + " group right device");
                }
                z10 = true;
                break;
            }
        }
        if (z10) {
            return true;
        }
        for (JoyConCombine joyConCombine : this.combineJoyConList) {
            if (joyConCombine != null) {
                if (joyConCombine.left == null && joyConType == 1) {
                    joyConCombine.addLeft(new JoyConDevice(inputDevice, i10));
                    LogUtils.i(TAG, id2 + " is add in " + joyConCombine.group + " group left device");
                } else if (joyConCombine.right == null && joyConType == 2) {
                    joyConCombine.addRight(new JoyConDevice(inputDevice, i10));
                    LogUtils.i(TAG, id2 + " is add in " + joyConCombine.group + " group right device");
                }
                z11 = true;
                break;
            }
        }
        if (!z11) {
            int size = this.combineJoyConList.size();
            JoyConCombine joyConCombine2 = new JoyConCombine(size);
            if (joyConType == 1) {
                joyConCombine2.addLeft(new JoyConDevice(inputDevice, i10));
                LogUtils.i(TAG, id2 + " is add in new group " + size + " left device");
            } else if (joyConType == 2) {
                joyConCombine2.addRight(new JoyConDevice(inputDevice, i10));
                LogUtils.i(TAG, id2 + " is add in new group " + size + " right device");
            }
            this.combineJoyConList.add(joyConCombine2);
        }
        return true;
    }

    public int getDeviceIndex(InputEvent inputEvent, int i10) {
        String str = TAG;
        LogUtils.d(str, "getDeviceIndex--> InputEvent = " + inputEvent + ", index = " + i10);
        if (!isEnable()) {
            LogUtils.i(str, "getDeviceIndex--> joy-con support disable");
            return i10;
        }
        if (inputEvent == null || inputEvent.getDevice() == null) {
            LogUtils.d(str, "getDeviceIndex--> event or device is null, return original index: " + i10);
            return i10;
        }
        InputDevice device = inputEvent.getDevice();
        if (this.joyConWorkMode == 0) {
            LogUtils.d(str, "getDeviceIndex--> separate mode, return original index: " + i10);
            return i10;
        }
        if (getJoyConType(device) == 0) {
            return i10;
        }
        int joyConIndex = getJoyConIndex(inputEvent, i10);
        LogUtils.d(str, "getDeviceIndex--> joy-con index: " + joyConIndex);
        return joyConIndex;
    }

    public void handleJoyStickBean(JoyStickBean joyStickBean, InputEvent inputEvent) {
        InputDevice device;
        int joyConType;
        if (!isEnable()) {
            LogUtils.i(TAG, "handleJoyStickBean--> joy-con support disable");
            return;
        }
        if (joyStickBean == null || (device = inputEvent.getDevice()) == null || !isCombinedMode() || (joyConType = getJoyConType(inputEvent.getDevice())) == 0) {
            return;
        }
        for (JoyConCombine joyConCombine : this.combineJoyConList) {
            if (joyConCombine != null) {
                if (joyConType == 1) {
                    if (joyConCombine.left != null && joyConCombine.left.getId() == device.getId()) {
                        joyConCombine.combineLeft(inputEvent, joyStickBean);
                        if (joyConCombine.right == null || joyConCombine.right.getDevice() == null) {
                            return;
                        }
                        combineJoyConData(joyStickBean, joyConCombine.joyBeanLeft, joyConCombine.joyBeanRight);
                        return;
                    }
                } else if (joyConCombine.right != null && joyConCombine.right.getId() == device.getId()) {
                    joyConCombine.combineRight(inputEvent, joyStickBean);
                    if (joyConCombine.left == null || joyConCombine.left.getDevice() == null) {
                        return;
                    }
                    combineJoyConData(joyStickBean, joyConCombine.joyBeanLeft, joyConCombine.joyBeanRight);
                    return;
                }
            }
        }
    }

    public boolean isCombinedMode() {
        return this.joyConWorkMode == 1;
    }

    public boolean isJoyCon(InputDevice inputDevice) {
        boolean z10 = false;
        if (!isEnable()) {
            LogUtils.d(TAG, "isJoyCon--> joy-con support disable");
            return false;
        }
        if (inputDevice == null) {
            LogUtils.d(TAG, "isJoyCon--> device is null");
            return false;
        }
        int sources = inputDevice.getSources();
        if (!((sources & InputDeviceCompat.SOURCE_JOYSTICK) == 16777232 || (sources & 1025) == 1025)) {
            LogUtils.d(TAG, "isJoyCon--> not a valid game controller device, sources: 0x" + Integer.toHexString(sources));
            return false;
        }
        String name = inputDevice.getName();
        int vendorId = inputDevice.getVendorId();
        int productId = inputDevice.getProductId();
        boolean zCheckDeviceNameMatch = checkDeviceNameMatch(name);
        if (!zCheckDeviceNameMatch && name != null) {
            String lowerCase = name.toLowerCase();
            zCheckDeviceNameMatch = lowerCase.contains("nintendo") && lowerCase.contains("joy-con");
        }
        boolean zIsNintendoDevice = isNintendoDevice(vendorId);
        boolean z11 = isLeftJoyConProduct(productId) || isRightJoyConProduct(productId);
        if (zIsNintendoDevice && z11 && zCheckDeviceNameMatch) {
            z10 = true;
        }
        LogUtils.d(TAG, "isJoyCon--> name: " + name + ", vendorId: " + vendorId + ", productId: " + productId + ", sources: " + sources + ", isNintendo: " + zIsNintendoDevice + ", isJoyConProduct: " + z11 + ", nameMatch: " + zCheckDeviceNameMatch + ", isJoyCon: " + z10);
        return z10;
    }

    public void release() {
        this.combineJoyConList.clear();
        this.joyConWorkMode = 1;
        this.nameKeywordsList.clear();
        this.vendorIdList.clear();
        this.leftJoyConProductIdList.clear();
        this.rightJoyConProductIdList.clear();
        this.enable = true;
    }

    public boolean removeDevice(int i10) {
        boolean zRemove = false;
        for (int size = this.combineJoyConList.size() - 1; size >= 0; size--) {
            JoyConCombine joyConCombine = this.combineJoyConList.get(size);
            if (joyConCombine != null && (zRemove = joyConCombine.remove(i10))) {
                if (joyConCombine.left != null || joyConCombine.right != null) {
                    break;
                    break;
                }
                this.combineJoyConList.remove(size);
                LogUtils.d(TAG, "removeDevice--> removed empty group " + joyConCombine.group);
                break;
            }
        }
        return zRemove;
    }

    public void reportGamePadDeviceInfo(InputEvent inputEvent) {
        InputDevice device;
        String str;
        if (HmInputDeviceManager.isJoyStick(inputEvent) && (device = inputEvent.getDevice()) != null) {
            int id2 = device.getId();
            boolean z10 = inputEvent instanceof KeyEvent;
            if (z10 ? this.x86GamePadKeyEventReportList.contains(Integer.valueOf(id2)) : this.x86GamePadMotionEventReportList.contains(Integer.valueOf(id2))) {
                return;
            }
            if (z10) {
                this.x86GamePadKeyEventReportList.add(Integer.valueOf(id2));
                str = "onKeyDown";
            } else {
                this.x86GamePadMotionEventReportList.add(Integer.valueOf(id2));
                str = "onGenericMotionEvent";
            }
            CountlyUtil.recordEvent(Constants.COUNTLY_GAME_PAD_DEVICE_INFO, ("source:" + str) + ",product id:" + device.getProductId() + ",data:" + device.toString());
        }
    }

    public void reset() {
        this.x86GamePadKeyEventReportList.clear();
        this.x86GamePadMotionEventReportList.clear();
    }

    public void setConfig(HashMap<String, String> map) {
        parseWorkEnable(map);
        parseWorkModel(map);
        parseNameKeywordsList(map);
        parseVendorIdList(map);
        parseLeftJoyConProductIdList(map);
        parseRightJoyConProductIdList(map);
    }

    private SwitchControllerManager() {
        this.joyConWorkMode = 1;
        this.enable = true;
        this.nameKeywordsList = new ArrayList<>();
        this.vendorIdList = new ArrayList<>();
        this.leftJoyConProductIdList = new ArrayList<>();
        this.rightJoyConProductIdList = new ArrayList<>();
        this.combineJoyConList = new ArrayList<>();
        this.x86GamePadKeyEventReportList = new ArrayList<>();
        this.x86GamePadMotionEventReportList = new ArrayList<>();
    }
}
