package com.join.kotlin.base.impl;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.DownloadGameArgsBean;
import com.join.mgps.dto.PayTagInfo;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\n\bf\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0003H&J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\bH\u0016J\b\u0010\u0010\u001a\u00020\bH\u0016J\b\u0010\u0011\u001a\u00020\bH\u0016J\b\u0010\u0012\u001a\u00020\u0003H\u0016J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0016J\b\u0010\u0018\u001a\u00020\rH\u0016J\n\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\n\u0010\u001b\u001a\u0004\u0018\u00010\u001cH&J\n\u0010\u001d\u001a\u0004\u0018\u00010\u001eH&J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0003H&J\n\u0010#\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010$\u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0003H&J\n\u0010%\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010&\u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0003H&J\n\u0010'\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010(\u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0003H&J\n\u0010)\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010*\u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0003H&¨\u0006+"}, d2 = {"Lcom/join/kotlin/base/impl/GInfo;", "Lcom/join/kotlin/base/impl/GameType;", "getModGameId", "", "getGameId", "getIcon", "getPackageName", "getVersionCode", "", "getDownStatus", "getPayTagInfo", "Lcom/join/mgps/dto/PayTagInfo;", "needPurchase", "", "needUpdate", "vCode", "getGameBook", "getBespeakSwitch", "getPluginNum", "getSpTagInfo", "Lcom/join/mgps/dto/TipNew;", "getTagInfo", "", "Lcom/join/mgps/dto/TipBean;", "isNetGame", "getDownArgs", "Lcom/join/mgps/dto/DownloadGameArgsBean;", "getIntentDataBean", "Lcom/join/mgps/Util/IntentDateBean;", "buildDownloadTask", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "getExt", "setExt", "", "str", "getExt1", "setExt1", "getExt2", "setExt2", "getExt3", "setExt3", "getExt4", "setExt4", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface GInfo extends GameType {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        public static int getBespeakSwitch(@NotNull GInfo gInfo) {
            return 0;
        }

        @Nullable
        public static DownloadGameArgsBean getDownArgs(@NotNull GInfo gInfo) {
            return null;
        }

        public static int getDownStatus(@NotNull GInfo gInfo) {
            return 0;
        }

        @Nullable
        public static String getExt(@NotNull GInfo gInfo) {
            return "";
        }

        @Nullable
        public static String getExt1(@NotNull GInfo gInfo) {
            return "";
        }

        @Nullable
        public static String getExt2(@NotNull GInfo gInfo) {
            return "";
        }

        @Nullable
        public static String getExt3(@NotNull GInfo gInfo) {
            return "";
        }

        @Nullable
        public static String getExt4(@NotNull GInfo gInfo) {
            return "";
        }

        public static int getGameBook(@NotNull GInfo gInfo) {
            return 0;
        }

        @Nullable
        public static PayTagInfo getPayTagInfo(@NotNull GInfo gInfo) {
            return null;
        }

        @NotNull
        public static String getPluginNum(@NotNull GInfo gInfo) {
            return "";
        }

        @Nullable
        public static TipNew getSpTagInfo(@NotNull GInfo gInfo) {
            return null;
        }

        @Nullable
        public static List<TipBean> getTagInfo(@NotNull GInfo gInfo) {
            return null;
        }

        public static int getVersionCode(@NotNull GInfo gInfo) {
            return 0;
        }

        public static boolean is64Bit(@NotNull GInfo gInfo) {
            return GameType.DefaultImpls.is64Bit(gInfo);
        }

        public static boolean isAndroidGame(@NotNull GInfo gInfo) {
            return GameType.DefaultImpls.isAndroidGame(gInfo);
        }

        public static boolean isBtGame(@NotNull GInfo gInfo) {
            return GameType.DefaultImpls.isBtGame(gInfo);
        }

        public static boolean isCpsGame(@NotNull GInfo gInfo) {
            return GameType.DefaultImpls.isCpsGame(gInfo);
        }

        public static boolean isGame(@NotNull GInfo gInfo) {
            return GameType.DefaultImpls.isGame(gInfo);
        }

        public static boolean isGameVm(@NotNull GInfo gInfo) {
            return GameType.DefaultImpls.isGameVm(gInfo);
        }

        public static boolean isH5Game(@NotNull GInfo gInfo) {
            return GameType.DefaultImpls.isH5Game(gInfo);
        }

        public static boolean isH5VmGame(@NotNull GInfo gInfo) {
            return GameType.DefaultImpls.isH5VmGame(gInfo);
        }

        public static boolean isHmCloud(@NotNull GInfo gInfo) {
            return GameType.DefaultImpls.isHmCloud(gInfo);
        }

        public static boolean isMiniGame(@NotNull GInfo gInfo) {
            return GameType.DefaultImpls.isMiniGame(gInfo);
        }

        public static boolean isModGameVm(@NotNull GInfo gInfo) {
            return GameType.DefaultImpls.isModGameVm(gInfo);
        }

        public static boolean isNetGame(@NotNull GInfo gInfo) {
            return UtilsMy.t2(gInfo.getTagInfo());
        }

        public static boolean isNetGameVm(@NotNull GInfo gInfo) {
            return GameType.DefaultImpls.isNetGameVm(gInfo);
        }

        public static boolean isSingleGameVm(@NotNull GInfo gInfo) {
            return GameType.DefaultImpls.isSingleGameVm(gInfo);
        }

        public static boolean needPurchase(@NotNull GInfo gInfo) {
            return UtilsMy.x0(gInfo.getPayTagInfo(), gInfo.getGameId()) > 0;
        }

        public static boolean needUpdate(@NotNull GInfo gInfo, int i10) {
            return i10 < gInfo.getVersionCode();
        }
    }

    @Nullable
    DownloadTask buildDownloadTask();

    int getBespeakSwitch();

    @Nullable
    DownloadGameArgsBean getDownArgs();

    int getDownStatus();

    @Nullable
    String getExt();

    @Nullable
    String getExt1();

    @Nullable
    String getExt2();

    @Nullable
    String getExt3();

    @Nullable
    String getExt4();

    int getGameBook();

    @Nullable
    String getGameId();

    @Nullable
    String getIcon();

    @Nullable
    IntentDateBean getIntentDataBean();

    @Nullable
    String getModGameId();

    @Nullable
    String getPackageName();

    @Nullable
    PayTagInfo getPayTagInfo();

    @NotNull
    String getPluginNum();

    @Nullable
    TipNew getSpTagInfo();

    @Nullable
    List<TipBean> getTagInfo();

    int getVersionCode();

    boolean isNetGame();

    boolean needPurchase();

    boolean needUpdate(int vCode);

    void setExt(@Nullable String str);

    void setExt1(@Nullable String str);

    void setExt2(@Nullable String str);

    void setExt3(@Nullable String str);

    void setExt4(@Nullable String str);
}
