package com.haima.hmcp.business;

import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class X86KeyBlocker {
    public static final int ACTION_DOWN = 0;
    public static final int ACTION_UP = 1;
    private static final String TAG = "X86KeyBlocker";
    private static X86KeyBlocker instance;
    private final Map<String, KeyMapping> keyMappingCache = new HashMap();
    private final List<KeyCode> pressedKeys = new ArrayList();
    private final List<Integer> configKeys = new ArrayList();

    public static class KeyCode {
        public boolean block = false;
        public Integer keyCode = null;

        public String toString() {
            return "KeyCode{block=" + this.block + ", keyCode=" + this.keyCode + '}';
        }
    }

    public static class KeyMapping {
        private List<Integer> codes;
        private String name;

        public KeyMapping(String str, List<Integer> list) {
            this.name = str;
            this.codes = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            KeyMapping keyMapping = (KeyMapping) obj;
            return this.name.equals(keyMapping.name) && this.codes.equals(keyMapping.codes);
        }

        public String getCodeString() {
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < this.codes.size(); i10++) {
                if (i10 > 0) {
                    sb2.append(",");
                }
                sb2.append(this.codes.get(i10));
            }
            return sb2.toString();
        }

        public List<Integer> getCodes() {
            return this.codes;
        }

        public String getName() {
            return this.name;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + this.codes.hashCode();
        }

        public String toString() {
            return "KeyMapping{name='" + this.name + "', codes=" + this.codes + '}';
        }
    }

    private X86KeyBlocker() {
    }

    private void cacheKeyMappings(List<KeyMapping> list) {
        this.keyMappingCache.clear();
        for (int i10 = 0; i10 < list.size(); i10++) {
            KeyMapping keyMapping = list.get(i10);
            this.keyMappingCache.put("mapping_" + i10, keyMapping);
            this.configKeys.addAll(keyMapping.codes);
        }
        LogUtils.d(TAG, "缓存了 " + list.size() + " 个按键映射");
    }

    private boolean containsKeyCode(List<Integer> list) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        for (KeyCode keyCode : this.pressedKeys) {
            if (list.contains(keyCode.keyCode)) {
                arrayList.add(keyCode.keyCode);
            }
        }
        return arrayList.size() == list.size() && arrayList.size() == this.pressedKeys.size();
    }

    public static synchronized X86KeyBlocker getInstance() {
        if (instance == null) {
            instance = new X86KeyBlocker();
        }
        return instance;
    }

    private String getPressedKeyCodes() {
        ArrayList arrayList = new ArrayList();
        Iterator<KeyCode> it2 = this.pressedKeys.iterator();
        while (it2.hasNext()) {
            Integer num = it2.next().keyCode;
            if (num != null) {
                arrayList.add(num);
            }
        }
        return arrayList.toString();
    }

    private boolean handleKeyDown(int i10) {
        KeyCode next;
        boolean z10;
        LogUtils.d(TAG, "按键按下: " + i10 + ", 当前按下按键集合: " + getPressedKeyCodes());
        boolean z11 = false;
        if (!this.configKeys.contains(Integer.valueOf(i10))) {
            LogUtils.d(TAG, "按键 " + i10 + " 不存在配置列表中");
            return false;
        }
        Iterator<KeyCode> it2 = this.pressedKeys.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (next.keyCode.intValue() != i10);
        if (next != null) {
            LogUtils.d(TAG, "按键 " + i10 + " 已按下，拦截状态：" + next.block);
            return next.block;
        }
        KeyCode keyCode = new KeyCode();
        keyCode.keyCode = Integer.valueOf(i10);
        this.pressedKeys.add(keyCode);
        LogUtils.d(TAG, "添加按键到集合: " + i10 + " (block=false), 新集合: " + getPressedKeyCodes());
        Iterator<KeyMapping> it3 = this.keyMappingCache.values().iterator();
        while (it3.hasNext()) {
            List<Integer> codes = it3.next().getCodes();
            if (codes.size() != 1 || codes.get(0).intValue() != i10) {
                if (codes.size() > 1 && codes.contains(Integer.valueOf(i10))) {
                    LogUtils.d(TAG, "当前按键 " + i10 + " 在组合键 " + codes + " 中，检查匹配条件");
                    if (containsKeyCode(codes)) {
                        List<KeyCode> list = this.pressedKeys;
                        KeyCode keyCode2 = list.get(list.size() - 1);
                        boolean z12 = keyCode2 != null && i10 == keyCode2.keyCode.intValue();
                        Iterator<KeyCode> it4 = this.pressedKeys.iterator();
                        while (true) {
                            if (!it4.hasNext()) {
                                z10 = false;
                                break;
                            }
                            if (it4.next().block) {
                                z10 = true;
                                break;
                            }
                        }
                        if (!z12 && !z10) {
                            LogUtils.d(TAG, "❌ 组合键 " + codes.toString() + " 当前键位（" + i10 + "）非拦截位，当前集合: " + getPressedKeyCodes());
                            break;
                        }
                        LogUtils.d(TAG, "✅ 拦截组合键按键: " + codes.toString() + " (keyCodes: " + codes + "), 当前按键: " + i10 + ", 当前集合: " + getPressedKeyCodes());
                    }
                }
            } else {
                LogUtils.d(TAG, "拦截单键 (keyCode: " + i10 + ")");
            }
            z11 = true;
        }
        keyCode.block = z11;
        LogUtils.d(TAG, "\n");
        return z11;
    }

    private boolean handleKeyUp(int i10) {
        KeyCode next;
        boolean z10;
        LogUtils.d(TAG, "按键释放: " + i10 + ", 释放前集合: " + getPressedKeyCodes());
        Iterator<KeyCode> it2 = this.pressedKeys.iterator();
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            Integer num = next.keyCode;
            if (num != null && num.intValue() == i10) {
                break;
            }
        }
        if (next != null) {
            if (next.block) {
                LogUtils.d(TAG, "拦截按键释放 (keyCode: " + i10 + ", 按下时已拦截)");
                z10 = true;
            } else {
                LogUtils.d(TAG, "不拦截按键释放 (keyCode: " + i10 + ", 按下时未拦截)");
            }
            this.pressedKeys.remove(next);
            LogUtils.d(TAG, "从集合中移除按键: " + i10 + ", 释放后集合: " + getPressedKeyCodes() + "\n");
            return z10;
        }
        LogUtils.d(TAG, "按键 " + i10 + " 不在集合中，不拦截");
        z10 = false;
        this.pressedKeys.remove(next);
        LogUtils.d(TAG, "从集合中移除按键: " + i10 + ", 释放后集合: " + getPressedKeyCodes() + "\n");
        return z10;
    }

    private List<KeyMapping> parseX86KeyBlockContent(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                String string = jSONObject.has("n") ? jSONObject.getString("n") : "";
                if (jSONObject.has("c")) {
                    JSONArray jSONArray2 = jSONObject.getJSONArray("c");
                    ArrayList arrayList2 = new ArrayList();
                    for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                        arrayList2.add(Integer.valueOf(jSONArray2.getInt(i11)));
                    }
                    arrayList.add(new KeyMapping(string, arrayList2));
                }
            }
        } catch (JSONException e10) {
            LogUtils.e(TAG, "解析x86_key_block_content字符串失败: " + e10.getMessage());
        }
        return arrayList;
    }

    public void checkConfiguration() {
        boolean z10;
        LogUtils.d(TAG, "=== 检查X86KeyBlocker配置 ===");
        LogUtils.d(TAG, "按键映射缓存大小: " + this.keyMappingCache.size());
        if (this.keyMappingCache.isEmpty()) {
            LogUtils.e(TAG, "❌ 按键映射缓存为空！请检查配置是否正确加载");
            return;
        }
        LogUtils.d(TAG, "已加载的按键映射:");
        for (Map.Entry<String, KeyMapping> entry : this.keyMappingCache.entrySet()) {
            LogUtils.d(TAG, "  " + entry.getKey() + " -> " + entry.getValue().getCodes());
        }
        Iterator<KeyMapping> it2 = this.keyMappingCache.values().iterator();
        while (true) {
            if (!it2.hasNext()) {
                z10 = false;
                break;
            }
            KeyMapping next = it2.next();
            z10 = true;
            if (next.getCodes().size() > 1) {
                LogUtils.d(TAG, "✅ 找到组合键配置: " + next.getCodes());
                break;
            }
        }
        if (!z10) {
            LogUtils.w(TAG, "⚠️ 未找到组合键配置！");
        }
        LogUtils.d(TAG, "=== 配置检查结束 ===");
    }

    public boolean isBlockKeyEvent(int i10, int i11) {
        if (this.keyMappingCache.isEmpty()) {
            return false;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("拦截方法 - 按键: ");
        sb2.append(i11);
        sb2.append(", 动作: ");
        sb2.append(i10 == 0 ? "DOWN" : "UP");
        LogUtils.d(TAG, sb2.toString());
        if (i10 == 0) {
            return handleKeyDown(i11);
        }
        if (i10 == 1) {
            return handleKeyUp(i11);
        }
        LogUtils.w(TAG, "未知的按键事件类型: " + i10 + ", keyCode: " + i11);
        return false;
    }

    public void parseKeyBlockContent(HashMap<String, String> map) {
        String str = map.get(Constants.X86_KEY_BLOCK_CONTENT);
        LogUtils.d(TAG, "开始解析按键拦截配置，内容: " + str);
        if (TextUtils.isEmpty(str)) {
            LogUtils.w(TAG, "按键拦截配置内容为空");
            this.keyMappingCache.clear();
            return;
        }
        List<KeyMapping> x86KeyBlockContent = parseX86KeyBlockContent(str);
        LogUtils.d(TAG, "解析到 " + x86KeyBlockContent.size() + " 个按键映射");
        cacheKeyMappings(x86KeyBlockContent);
        LogUtils.d(TAG, "按键拦截配置解析完成");
    }
}
