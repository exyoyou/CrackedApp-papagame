package com.join.kotlin.module.hmcloud.pad;

import com.google.zxing.client.result.ExpandedProductParsedResult;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.Util.o0;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sdk.base.module.manager.SDKManager;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'JoyL' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:160)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\br\b\u0086\u0081\u0002\u0018\u0000 w2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001wB%\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rj\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bRj\u0002\bSj\u0002\bTj\u0002\bUj\u0002\bVj\u0002\bWj\u0002\bXj\u0002\bYj\u0002\bZj\u0002\b[j\u0002\b\\j\u0002\b]j\u0002\b^j\u0002\b_j\u0002\b`j\u0002\baj\u0002\bbj\u0002\bcj\u0002\bdj\u0002\bej\u0002\bfj\u0002\bgj\u0002\bhj\u0002\bij\u0002\bjj\u0002\bkj\u0002\blj\u0002\bmj\u0002\bnj\u0002\boj\u0002\bpj\u0002\bqj\u0002\brj\u0002\bsj\u0002\btj\u0002\buj\u0002\bv¨\u0006x"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;", "", "key", "", "nickname", "code", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getKey", "()Ljava/lang/String;", "getNickname", "getCode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "BtnLT", "BtnLB", "BtnLS", "BtnRT", "BtnRB", "BtnRS", "BtnA", "BtnB", "BtnX", "BtnY", "BtnSelect", "BtnStart", "Dpad", "JoyL", "JoyR", "JoyDpad", "JoyWasd", "JoyArrow", "MouseLeft", "MouseRight", "MouseMiddle", "MouseMoveUp", "MouseMoveDown", "MouseWheel", "VkEscape", "VkF1", "VkF2", "VkF3", "VkF4", "VkF5", "VkF6", "VkF7", "VkF8", "VkF9", "VkF10", "VkF11", "VkF12", "VkInsert", "VkDelete", "VkPageUp", "VkPageDown", "VkHome", "VkEnd", "VkBackquote", "Key1", "Key2", "Key3", "Key4", "Key5", "Key6", "Key7", "Key8", "Key9", "Key0", "VkMinus", "VkEquals", "VkBackspace", "VkTab", "KeyQ", "KeyW", "KeyE", "KeyR", "KeyT", "KeyY", "KeyU", "KeyI", "KeyO", "KeyP", "VkBracketLeft", "VkBracketRight", "VkBackslash", "VkCapsLock", "KeyA", "KeyS", "KeyD", "KeyF", "KeyG", "KeyH", "KeyJ", "KeyK", "KeyL", "VkSemicolon", "VkQuote", "VkEnter", "VkShift", "KeyZ", "KeyX", "KeyC", "KeyV", "KeyB", "KeyN", "KeyM", "VkComma", "VkPeriod", "VkSlash", "VkCtrl", "VkAlt", "VkWinLeft", "VkWinRight", "VkSpace", "VkUp", "VkDown", "VkLeft", "VkRight", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMKeyData {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HMKeyData[] $VALUES;
    public static final HMKeyData BtnA;
    public static final HMKeyData BtnB;
    public static final HMKeyData BtnLB;
    public static final HMKeyData BtnLS;
    public static final HMKeyData BtnLT;
    public static final HMKeyData BtnRB;
    public static final HMKeyData BtnRS;
    public static final HMKeyData BtnRT;
    public static final HMKeyData BtnSelect;
    public static final HMKeyData BtnStart;
    public static final HMKeyData BtnX;
    public static final HMKeyData BtnY;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final HMKeyData Dpad;
    public static final HMKeyData JoyArrow;
    public static final HMKeyData JoyDpad;
    public static final HMKeyData JoyL;
    public static final HMKeyData JoyR;
    public static final HMKeyData JoyWasd;
    public static final HMKeyData Key0;
    public static final HMKeyData Key1;
    public static final HMKeyData Key2;
    public static final HMKeyData Key3;
    public static final HMKeyData Key4;
    public static final HMKeyData Key5;
    public static final HMKeyData Key6;
    public static final HMKeyData Key7;
    public static final HMKeyData Key8;
    public static final HMKeyData Key9;
    public static final HMKeyData KeyA;
    public static final HMKeyData KeyB;
    public static final HMKeyData KeyC;
    public static final HMKeyData KeyD;
    public static final HMKeyData KeyE;
    public static final HMKeyData KeyF;
    public static final HMKeyData KeyG;
    public static final HMKeyData KeyH;
    public static final HMKeyData KeyI;
    public static final HMKeyData KeyJ;
    public static final HMKeyData KeyK;
    public static final HMKeyData KeyL;
    public static final HMKeyData KeyM;
    public static final HMKeyData KeyN;
    public static final HMKeyData KeyO;
    public static final HMKeyData KeyP;
    public static final HMKeyData KeyQ;
    public static final HMKeyData KeyR;
    public static final HMKeyData KeyS;
    public static final HMKeyData KeyT;
    public static final HMKeyData KeyU;
    public static final HMKeyData KeyV;
    public static final HMKeyData KeyW;
    public static final HMKeyData KeyX;
    public static final HMKeyData KeyY;
    public static final HMKeyData KeyZ;
    public static final HMKeyData MouseLeft;
    public static final HMKeyData MouseMiddle;
    public static final HMKeyData MouseMoveDown;
    public static final HMKeyData MouseMoveUp;
    public static final HMKeyData MouseRight;
    public static final HMKeyData MouseWheel;
    public static final HMKeyData VkAlt;
    public static final HMKeyData VkBackquote;
    public static final HMKeyData VkBackslash;
    public static final HMKeyData VkBackspace;
    public static final HMKeyData VkBracketLeft;
    public static final HMKeyData VkBracketRight;
    public static final HMKeyData VkCapsLock;
    public static final HMKeyData VkComma;
    public static final HMKeyData VkCtrl;
    public static final HMKeyData VkDelete;
    public static final HMKeyData VkDown;
    public static final HMKeyData VkEnd;
    public static final HMKeyData VkEnter;
    public static final HMKeyData VkEquals;
    public static final HMKeyData VkEscape;
    public static final HMKeyData VkF1;
    public static final HMKeyData VkF10;
    public static final HMKeyData VkF11;
    public static final HMKeyData VkF12;
    public static final HMKeyData VkF2;
    public static final HMKeyData VkF3;
    public static final HMKeyData VkF4;
    public static final HMKeyData VkF5;
    public static final HMKeyData VkF6;
    public static final HMKeyData VkF7;
    public static final HMKeyData VkF8;
    public static final HMKeyData VkF9;
    public static final HMKeyData VkHome;
    public static final HMKeyData VkInsert;
    public static final HMKeyData VkLeft;
    public static final HMKeyData VkMinus;
    public static final HMKeyData VkPageDown;
    public static final HMKeyData VkPageUp;
    public static final HMKeyData VkPeriod;
    public static final HMKeyData VkQuote;
    public static final HMKeyData VkRight;
    public static final HMKeyData VkSemicolon;
    public static final HMKeyData VkShift;
    public static final HMKeyData VkSlash;
    public static final HMKeyData VkSpace;
    public static final HMKeyData VkTab;
    public static final HMKeyData VkUp;
    public static final HMKeyData VkWinLeft;
    public static final HMKeyData VkWinRight;

    @NotNull
    private static final Set<String> gamepadButton;

    @NotNull
    private static final Set<String> shoulder;

    @Nullable
    private final Integer code;

    @NotNull
    private final String key;

    @NotNull
    private final String nickname;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u0006J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0006R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0010"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/HMKeyData$Companion;", "", "<init>", "()V", "shoulder", "", "", "getShoulder", "()Ljava/util/Set;", "gamepadButton", "getGamepadButton", "parse", "Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;", "key", "isShoulder", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHMOpView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMOpView.kt\ncom/join/kotlin/module/hmcloud/pad/HMKeyData$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,762:1\n295#2,2:763\n*S KotlinDebug\n*F\n+ 1 HMOpView.kt\ncom/join/kotlin/module/hmcloud/pad/HMKeyData$Companion\n*L\n752#1:763,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Set<String> getGamepadButton() {
            return HMKeyData.gamepadButton;
        }

        @NotNull
        public final Set<String> getShoulder() {
            return HMKeyData.shoulder;
        }

        public final boolean isShoulder(@NotNull String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return getShoulder().contains(key);
        }

        @Nullable
        public final HMKeyData parse(@NotNull String key) {
            HMKeyData next;
            Intrinsics.checkNotNullParameter(key, "key");
            Iterator<HMKeyData> it2 = HMKeyData.getEntries().iterator();
            while (it2.hasNext()) {
                next = it2.next();
                if (Intrinsics.areEqual(next.getKey(), key)) {
                    return next;
                }
            }
            next = null;
            return next;
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ HMKeyData[] $values() {
        return new HMKeyData[]{BtnLT, BtnLB, BtnLS, BtnRT, BtnRB, BtnRS, BtnA, BtnB, BtnX, BtnY, BtnSelect, BtnStart, Dpad, JoyL, JoyR, JoyDpad, JoyWasd, JoyArrow, MouseLeft, MouseRight, MouseMiddle, MouseMoveUp, MouseMoveDown, MouseWheel, VkEscape, VkF1, VkF2, VkF3, VkF4, VkF5, VkF6, VkF7, VkF8, VkF9, VkF10, VkF11, VkF12, VkInsert, VkDelete, VkPageUp, VkPageDown, VkHome, VkEnd, VkBackquote, Key1, Key2, Key3, Key4, Key5, Key6, Key7, Key8, Key9, Key0, VkMinus, VkEquals, VkBackspace, VkTab, KeyQ, KeyW, KeyE, KeyR, KeyT, KeyY, KeyU, KeyI, KeyO, KeyP, VkBracketLeft, VkBracketRight, VkBackslash, VkCapsLock, KeyA, KeyS, KeyD, KeyF, KeyG, KeyH, KeyJ, KeyK, KeyL, VkSemicolon, VkQuote, VkEnter, VkShift, KeyZ, KeyX, KeyC, KeyV, KeyB, KeyN, KeyM, VkComma, VkPeriod, VkSlash, VkCtrl, VkAlt, VkWinLeft, VkWinRight, VkSpace, VkUp, VkDown, VkLeft, VkRight};
    }

    static {
        HMKeyData hMKeyData = new HMKeyData("BtnLT", 0, "BtnLT", "LT", 102);
        BtnLT = hMKeyData;
        HMKeyData hMKeyData2 = new HMKeyData("BtnLB", 1, "BtnLB", ExpandedProductParsedResult.POUND, 104);
        BtnLB = hMKeyData2;
        HMKeyData hMKeyData3 = new HMKeyData("BtnLS", 2, "BtnLS", "LS", 106);
        BtnLS = hMKeyData3;
        HMKeyData hMKeyData4 = new HMKeyData("BtnRT", 3, "BtnRT", "RT", 103);
        BtnRT = hMKeyData4;
        HMKeyData hMKeyData5 = new HMKeyData("BtnRB", 4, "BtnRB", "RB", 105);
        BtnRB = hMKeyData5;
        HMKeyData hMKeyData6 = new HMKeyData("BtnRS", 5, "BtnRS", "RS", 107);
        BtnRS = hMKeyData6;
        HMKeyData hMKeyData7 = new HMKeyData("BtnA", 6, "BtnA", "A", 96);
        BtnA = hMKeyData7;
        HMKeyData hMKeyData8 = new HMKeyData("BtnB", 7, "BtnB", SDKManager.ALGO_B_AES_SHA256_RSA, 97);
        BtnB = hMKeyData8;
        HMKeyData hMKeyData9 = new HMKeyData("BtnX", 8, "BtnX", "X", 99);
        BtnX = hMKeyData9;
        HMKeyData hMKeyData10 = new HMKeyData("BtnY", 9, "BtnY", "Y", 100);
        BtnY = hMKeyData10;
        HMKeyData hMKeyData11 = new HMKeyData("BtnSelect", 10, "BtnSelect", "Select", 109);
        BtnSelect = hMKeyData11;
        HMKeyData hMKeyData12 = new HMKeyData("BtnStart", 11, "BtnStart", "Start", 108);
        BtnStart = hMKeyData12;
        Dpad = new HMKeyData("Dpad", 12, "Dpad", "Dpad", null, 4, null);
        Integer num = null;
        int i10 = 4;
        DefaultConstructorMarker defaultConstructorMarker = null;
        JoyL = new HMKeyData("JoyL", 13, "JoyL", "JoyL", num, i10, defaultConstructorMarker);
        Integer num2 = null;
        int i11 = 4;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        JoyR = new HMKeyData("JoyR", 14, "JoyR", "JoyR", num2, i11, defaultConstructorMarker2);
        JoyDpad = new HMKeyData("JoyDpad", 15, "JoyDpad", "JoyDpad", num, i10, defaultConstructorMarker);
        JoyWasd = new HMKeyData("JoyWasd", 16, "JoyWasd", "JoyWasd", num2, i11, defaultConstructorMarker2);
        JoyArrow = new HMKeyData("JoyArrow", 17, "JoyArrow", "JoyArrow", num, i10, defaultConstructorMarker);
        MouseLeft = new HMKeyData("MouseLeft", 18, "MouseLeft", "左击", num2, i11, defaultConstructorMarker2);
        MouseRight = new HMKeyData("MouseRight", 19, "MouseRight", "右击", num, i10, defaultConstructorMarker);
        MouseMiddle = new HMKeyData("MouseMiddle", 20, "MouseMiddle", "中击", num2, i11, defaultConstructorMarker2);
        MouseMoveUp = new HMKeyData("MouseMoveUp", 21, "MouseMoveUp", "滚轮上", num, i10, defaultConstructorMarker);
        MouseMoveDown = new HMKeyData("MouseMoveDown", 22, "MouseMoveDown", "滚轮下", num2, i11, defaultConstructorMarker2);
        MouseWheel = new HMKeyData("MouseWheel", 23, "MouseWheel", "MouseWheel", num, i10, defaultConstructorMarker);
        VkEscape = new HMKeyData("VkEscape", 24, "VkEscape", "Esc", num2, i11, defaultConstructorMarker2);
        VkF1 = new HMKeyData("VkF1", 25, "VkF1", "F1", num, i10, defaultConstructorMarker);
        VkF2 = new HMKeyData("VkF2", 26, "VkF2", "F2", num2, i11, defaultConstructorMarker2);
        VkF3 = new HMKeyData("VkF3", 27, "VkF3", "F3", num, i10, defaultConstructorMarker);
        VkF4 = new HMKeyData("VkF4", 28, "VkF4", "F4", num2, i11, defaultConstructorMarker2);
        VkF5 = new HMKeyData("VkF5", 29, "VkF5", "F5", num, i10, defaultConstructorMarker);
        VkF6 = new HMKeyData("VkF6", 30, "VkF6", "F6", num2, i11, defaultConstructorMarker2);
        VkF7 = new HMKeyData("VkF7", 31, "VkF7", "F7", num, i10, defaultConstructorMarker);
        VkF8 = new HMKeyData("VkF8", 32, "VkF8", "F8", num2, i11, defaultConstructorMarker2);
        VkF9 = new HMKeyData("VkF9", 33, "VkF9", "F9", num, i10, defaultConstructorMarker);
        VkF10 = new HMKeyData("VkF10", 34, "VkF10", "F10", num2, i11, defaultConstructorMarker2);
        VkF11 = new HMKeyData("VkF11", 35, "VkF11", "F11", num, i10, defaultConstructorMarker);
        VkF12 = new HMKeyData("VkF12", 36, "VkF12", "F12", num2, i11, defaultConstructorMarker2);
        VkInsert = new HMKeyData("VkInsert", 37, "VkInsert", "Ins", num, i10, defaultConstructorMarker);
        VkDelete = new HMKeyData("VkDelete", 38, "VkDelete", "Del", num2, i11, defaultConstructorMarker2);
        VkPageUp = new HMKeyData("VkPageUp", 39, "VkPageUp", "PgUp", num, i10, defaultConstructorMarker);
        VkPageDown = new HMKeyData("VkPageDown", 40, "VkPageDown", "PgDn", num2, i11, defaultConstructorMarker2);
        VkHome = new HMKeyData("VkHome", 41, "VkHome", "Home", num, i10, defaultConstructorMarker);
        VkEnd = new HMKeyData("VkEnd", 42, "VkEnd", "End", num2, i11, defaultConstructorMarker2);
        VkBackquote = new HMKeyData("VkBackquote", 43, "VkBackquote", "Backquote", num, i10, defaultConstructorMarker);
        Key1 = new HMKeyData("Key1", 44, "Key1", "1", num2, i11, defaultConstructorMarker2);
        Key2 = new HMKeyData("Key2", 45, "Key2", "2", num, i10, defaultConstructorMarker);
        Key3 = new HMKeyData("Key3", 46, "Key3", "3", num2, i11, defaultConstructorMarker2);
        Key4 = new HMKeyData("Key4", 47, "Key4", "4", num, i10, defaultConstructorMarker);
        Key5 = new HMKeyData("Key5", 48, "Key5", "5", num2, i11, defaultConstructorMarker2);
        Key6 = new HMKeyData("Key6", 49, "Key6", "6", num, i10, defaultConstructorMarker);
        Key7 = new HMKeyData("Key7", 50, "Key7", "7", num2, i11, defaultConstructorMarker2);
        Key8 = new HMKeyData("Key8", 51, "Key8", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, num, i10, defaultConstructorMarker);
        Key9 = new HMKeyData("Key9", 52, "Key9", "9", num2, i11, defaultConstructorMarker2);
        Key0 = new HMKeyData("Key0", 53, "Key0", "0", num, i10, defaultConstructorMarker);
        VkMinus = new HMKeyData("VkMinus", 54, "VkMinus", "-", num2, i11, defaultConstructorMarker2);
        VkEquals = new HMKeyData("VkEquals", 55, "VkEquals", SimpleComparison.EQUAL_TO_OPERATION, num, i10, defaultConstructorMarker);
        VkBackspace = new HMKeyData("VkBackspace", 56, "VkBackspace", "Backspace", num2, i11, defaultConstructorMarker2);
        VkTab = new HMKeyData("VkTab", 57, "VkTab", "Tab", num, i10, defaultConstructorMarker);
        KeyQ = new HMKeyData("KeyQ", 58, "KeyQ", "Q", num2, i11, defaultConstructorMarker2);
        KeyW = new HMKeyData("KeyW", 59, "KeyW", "W", num, i10, defaultConstructorMarker);
        KeyE = new HMKeyData("KeyE", 60, "KeyE", SDKManager.ALGO_E_SM4_SM3_SM2, num2, i11, defaultConstructorMarker2);
        KeyR = new HMKeyData("KeyR", 61, "KeyR", "R", num, i10, defaultConstructorMarker);
        KeyT = new HMKeyData("KeyT", 62, "KeyT", "T", num2, i11, defaultConstructorMarker2);
        KeyY = new HMKeyData("KeyY", 63, "KeyY", "Y", num, i10, defaultConstructorMarker);
        KeyU = new HMKeyData("KeyU", 64, "KeyU", "U", num2, i11, defaultConstructorMarker2);
        KeyI = new HMKeyData("KeyI", 65, "KeyI", "I", num, i10, defaultConstructorMarker);
        KeyO = new HMKeyData("KeyO", 66, "KeyO", "O", num2, i11, defaultConstructorMarker2);
        KeyP = new HMKeyData("KeyP", 67, "KeyP", "P", num, i10, defaultConstructorMarker);
        VkBracketLeft = new HMKeyData("VkBracketLeft", 68, "VkBracketLeft", "[", num2, i11, defaultConstructorMarker2);
        VkBracketRight = new HMKeyData("VkBracketRight", 69, "VkBracketRight", "]", num, i10, defaultConstructorMarker);
        VkBackslash = new HMKeyData("VkBackslash", 70, "VkBackslash", "\\", num2, i11, defaultConstructorMarker2);
        VkCapsLock = new HMKeyData("VkCapsLock", 71, "VkCapsLock", "CapsLock", num, i10, defaultConstructorMarker);
        KeyA = new HMKeyData("KeyA", 72, "KeyA", "A", num2, i11, defaultConstructorMarker2);
        KeyS = new HMKeyData("KeyS", 73, "KeyS", "S", num, i10, defaultConstructorMarker);
        KeyD = new HMKeyData("KeyD", 74, "KeyD", SDKManager.ALGO_D_RFU, num2, i11, defaultConstructorMarker2);
        KeyF = new HMKeyData("KeyF", 75, "KeyF", "F", num, i10, defaultConstructorMarker);
        KeyG = new HMKeyData("KeyG", 76, "KeyG", "G", num2, i11, defaultConstructorMarker2);
        KeyH = new HMKeyData("KeyH", 77, "KeyH", "H", num, i10, defaultConstructorMarker);
        KeyJ = new HMKeyData("KeyJ", 78, "KeyJ", "J", num2, i11, defaultConstructorMarker2);
        KeyK = new HMKeyData("KeyK", 79, "KeyK", "K", num, i10, defaultConstructorMarker);
        KeyL = new HMKeyData("KeyL", 80, "KeyL", "L", num2, i11, defaultConstructorMarker2);
        VkSemicolon = new HMKeyData("VkSemicolon", 81, "VkSemicolon", ";", num, i10, defaultConstructorMarker);
        VkQuote = new HMKeyData("VkQuote", 82, "VkQuote", "'", num2, i11, defaultConstructorMarker2);
        VkEnter = new HMKeyData("VkEnter", 83, "VkEnter", "Enter", num, i10, defaultConstructorMarker);
        VkShift = new HMKeyData("VkShift", 84, "VkShift", "Shift", num2, i11, defaultConstructorMarker2);
        KeyZ = new HMKeyData("KeyZ", 85, "KeyZ", "Z", num, i10, defaultConstructorMarker);
        KeyX = new HMKeyData("KeyX", 86, "KeyX", "X", num2, i11, defaultConstructorMarker2);
        KeyC = new HMKeyData("KeyC", 87, "KeyC", SDKManager.ALGO_C_RFU, num, i10, defaultConstructorMarker);
        KeyV = new HMKeyData("KeyV", 88, "KeyV", "V", num2, i11, defaultConstructorMarker2);
        KeyB = new HMKeyData("KeyB", 89, "KeyB", SDKManager.ALGO_B_AES_SHA256_RSA, num, i10, defaultConstructorMarker);
        KeyN = new HMKeyData("KeyN", 90, "KeyN", "N", num2, i11, defaultConstructorMarker2);
        KeyM = new HMKeyData("KeyM", 91, "KeyM", "M", num, i10, defaultConstructorMarker);
        VkComma = new HMKeyData("VkComma", 92, "VkComma", ",", num2, i11, defaultConstructorMarker2);
        VkPeriod = new HMKeyData("VkPeriod", 93, "VkPeriod", o0.f49827a, num, i10, defaultConstructorMarker);
        VkSlash = new HMKeyData("VkSlash", 94, "VkSlash", net.lingala.zip4j.util.e.F0, num2, i11, defaultConstructorMarker2);
        VkCtrl = new HMKeyData("VkCtrl", 95, "VkCtrl", "Ctrl", num, i10, defaultConstructorMarker);
        VkAlt = new HMKeyData("VkAlt", 96, "VkAlt", "Alt", num2, i11, defaultConstructorMarker2);
        VkWinLeft = new HMKeyData("VkWinLeft", 97, "VkWinLeft", "WinLeft", num, i10, defaultConstructorMarker);
        VkWinRight = new HMKeyData("VkWinRight", 98, "VkWinRight", "WinRight", num2, i11, defaultConstructorMarker2);
        VkSpace = new HMKeyData("VkSpace", 99, "VkSpace", "Space", num, i10, defaultConstructorMarker);
        VkUp = new HMKeyData("VkUp", 100, "VkUp", "Up", num2, i11, defaultConstructorMarker2);
        VkDown = new HMKeyData("VkDown", 101, "VkDown", "Down", num, i10, defaultConstructorMarker);
        VkLeft = new HMKeyData("VkLeft", 102, "VkLeft", "Left", num2, i11, defaultConstructorMarker2);
        VkRight = new HMKeyData("VkRight", 103, "VkRight", "Right", num, i10, defaultConstructorMarker);
        HMKeyData[] hMKeyDataArr$values = $values();
        $VALUES = hMKeyDataArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(hMKeyDataArr$values);
        INSTANCE = new Companion(null);
        shoulder = SetsKt__SetsKt.setOf((Object[]) new String[]{hMKeyData.key, hMKeyData2.key, hMKeyData4.key, hMKeyData5.key});
        gamepadButton = SetsKt__SetsKt.setOf((Object[]) new String[]{hMKeyData9.key, hMKeyData10.key, hMKeyData7.key, hMKeyData8.key, hMKeyData.key, hMKeyData2.key, hMKeyData4.key, hMKeyData5.key, hMKeyData3.key, hMKeyData6.key, hMKeyData11.key, hMKeyData12.key});
    }

    private HMKeyData(String str, int i10, String str2, String str3, Integer num) {
        super(str, i10);
        this.key = str2;
        this.nickname = str3;
        this.code = num;
    }

    @NotNull
    public static EnumEntries<HMKeyData> getEntries() {
        return $ENTRIES;
    }

    public static HMKeyData valueOf(String str) {
        return (HMKeyData) Enum.valueOf(HMKeyData.class, str);
    }

    public static HMKeyData[] values() {
        return (HMKeyData[]) $VALUES.clone();
    }

    @Nullable
    public final Integer getCode() {
        return this.code;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final String getNickname() {
        return this.nickname;
    }

    /* synthetic */ HMKeyData(String str, int i10, String str2, String str3, Integer num, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i10, str2, str3, (i11 & 4) != 0 ? null : num);
    }
}
