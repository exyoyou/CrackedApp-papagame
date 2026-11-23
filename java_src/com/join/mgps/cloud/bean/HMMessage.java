package com.join.mgps.cloud.bean;

import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.activity.HMCloudMainActivity_;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \n2\u00020\u0001:\u0014\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001dB\t\b\u0014¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0014\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0002\u0010\u0006R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006\u0082\u0001\u0013\u001e\u001f !\"#$%&'()*+,-./0¨\u00061"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage;", "", "<init>", "()V", "action", "", "(Ljava/lang/String;)V", "getAction", "()Ljava/lang/String;", "setAction", "Companion", "ConfigTest", "Config", "Connect", "Start", "DownloadCloudArchive", "UploadCloudArchive", "UserInfo", "CapScreenResult", "ReqCapScreen", "Log", "Connected", "ConfigWait", "ConfigReady", "GameReady", "Intent", "ArchiveReady", "Launching", "UserInfoReady", "SendMessageResult", "Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;", "Lcom/join/mgps/cloud/bean/HMMessage$CapScreenResult;", "Lcom/join/mgps/cloud/bean/HMMessage$Config;", "Lcom/join/mgps/cloud/bean/HMMessage$ConfigReady;", "Lcom/join/mgps/cloud/bean/HMMessage$ConfigTest;", "Lcom/join/mgps/cloud/bean/HMMessage$ConfigWait;", "Lcom/join/mgps/cloud/bean/HMMessage$Connect;", "Lcom/join/mgps/cloud/bean/HMMessage$Connected;", "Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;", "Lcom/join/mgps/cloud/bean/HMMessage$GameReady;", "Lcom/join/mgps/cloud/bean/HMMessage$Intent;", "Lcom/join/mgps/cloud/bean/HMMessage$Launching;", "Lcom/join/mgps/cloud/bean/HMMessage$Log;", "Lcom/join/mgps/cloud/bean/HMMessage$ReqCapScreen;", "Lcom/join/mgps/cloud/bean/HMMessage$SendMessageResult;", "Lcom/join/mgps/cloud/bean/HMMessage$Start;", "Lcom/join/mgps/cloud/bean/HMMessage$UploadCloudArchive;", "Lcom/join/mgps/cloud/bean/HMMessage$UserInfo;", "Lcom/join/mgps/cloud/bean/HMMessage$UserInfoReady;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class HMMessage {

    @NotNull
    public static final String ACTION_CAP_SCREEN_RESULT = "capScreenResult";

    @NotNull
    public static final String ACTION_CONFIG = "config";

    @NotNull
    public static final String ACTION_CONNECT = "connect";

    @NotNull
    public static final String ACTION_DOWNLOAD_CLOUD_ARCHIVE = "downloadCloudArchive";

    @NotNull
    public static final String ACTION_START = "start";

    @NotNull
    public static final String ACTION_TEST_CONFIG = "configTest";

    @NotNull
    public static final String ACTION_UPLOAD_CLOUD_ARCHIVE = "uploadCloudArchive";

    @NotNull
    public static final String ACTION_USER_INFO = "userInfo";

    @NotNull
    private String action;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0011"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "status", "", "getStatus", "()I", "setStatus", "(I)V", "equals", "", AdnName.OTHER, "", "hashCode", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ArchiveReady extends HMMessage {

        @NotNull
        public static final ArchiveReady INSTANCE = new ArchiveReady();
        private static int status = -1;

        private ArchiveReady() {
            super("archiveReady", null);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ArchiveReady)) {
                return false;
            }
            return true;
        }

        public final int getStatus() {
            return status;
        }

        public int hashCode() {
            return -220870440;
        }

        public final void setStatus(int i10) {
            status = i10;
        }

        @NotNull
        public String toString() {
            return "ArchiveReady";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$CapScreenResult;", "Lcom/join/mgps/cloud/bean/HMMessage;", "success", "", "data", "", "<init>", "(ZLjava/lang/String;)V", "getSuccess", "()Z", "getData", "()Ljava/lang/String;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class CapScreenResult extends HMMessage {

        @Nullable
        private final String data;
        private final boolean success;

        public /* synthetic */ CapScreenResult(boolean z10, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(z10, (i10 & 2) != 0 ? "" : str);
        }

        @Nullable
        public final String getData() {
            return this.data;
        }

        public final boolean getSuccess() {
            return this.success;
        }

        public CapScreenResult(boolean z10, @Nullable String str) {
            super(HMMessage.ACTION_CAP_SCREEN_RESULT, null);
            this.success = z10;
            this.data = str;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$Config;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "config", "Lcom/join/mgps/cloud/bean/ConfigInfo;", "getConfig", "()Lcom/join/mgps/cloud/bean/ConfigInfo;", "setConfig", "(Lcom/join/mgps/cloud/bean/ConfigInfo;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Config extends HMMessage {

        @Nullable
        private ConfigInfo config;

        public Config() {
            super("config", null);
        }

        @Nullable
        public final ConfigInfo getConfig() {
            return this.config;
        }

        public final void setConfig(@Nullable ConfigInfo configInfo) {
            this.config = configInfo;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$ConfigReady;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "equals", "", AdnName.OTHER, "", "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ConfigReady extends HMMessage {

        @NotNull
        public static final ConfigReady INSTANCE = new ConfigReady();

        private ConfigReady() {
            super("configReady", null);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ConfigReady)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 883937738;
        }

        @NotNull
        public String toString() {
            return "ConfigReady";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$ConfigTest;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "config", "", "getConfig", "()Ljava/lang/String;", "setConfig", "(Ljava/lang/String;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ConfigTest extends HMMessage {

        @NotNull
        private String config;

        public ConfigTest() {
            super(HMMessage.ACTION_TEST_CONFIG, null);
            this.config = "";
        }

        @NotNull
        public final String getConfig() {
            return this.config;
        }

        public final void setConfig(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.config = str;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$ConfigWait;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "equals", "", AdnName.OTHER, "", "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ConfigWait extends HMMessage {

        @NotNull
        public static final ConfigWait INSTANCE = new ConfigWait();

        private ConfigWait() {
            super("configWait", null);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ConfigWait)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1772455826;
        }

        @NotNull
        public String toString() {
            return "ConfigWait";
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$Connect;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Connect extends HMMessage {
        public Connect() {
            super("connect", null);
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$Connected;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "equals", "", AdnName.OTHER, "", "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Connected extends HMMessage {

        @NotNull
        public static final Connected INSTANCE = new Connected();

        private Connected() {
            super(ConstantsInternal.HM_SYS_CONFIG_NOTIFY_CONNECTED, null);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Connected)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 306619282;
        }

        @NotNull
        public String toString() {
            return "Connected";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", HMCloudMainActivity_.ARCHIVE_DATA_EXTRA, "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getArchiveData", "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", HMCloudMainActivity_.ARCHIVE_PATH_DATA_EXTRA, "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "getArchivePathData", "()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DownloadCloudArchive extends HMMessage {

        @Nullable
        private final ArchiveData archiveData;

        @Nullable
        private final ModGameArchivePathData archivePathData;

        public DownloadCloudArchive() {
            super(HMMessage.ACTION_DOWNLOAD_CLOUD_ARCHIVE, null);
        }

        @Nullable
        public final ArchiveData getArchiveData() {
            return this.archiveData;
        }

        @Nullable
        public final ModGameArchivePathData getArchivePathData() {
            return this.archivePathData;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$GameReady;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "equals", "", AdnName.OTHER, "", "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class GameReady extends HMMessage {

        @NotNull
        public static final GameReady INSTANCE = new GameReady();

        private GameReady() {
            super("gameReady", null);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof GameReady)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1874523482;
        }

        @NotNull
        public String toString() {
            return "GameReady";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$Intent;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "str", "", "getStr", "()Ljava/lang/String;", "setStr", "(Ljava/lang/String;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Intent extends HMMessage {

        @NotNull
        private String str;

        public Intent() {
            super(Constants.WS_MESSAGE_TYPE_INTENT, null);
            this.str = "";
        }

        @NotNull
        public final String getStr() {
            return this.str;
        }

        public final void setStr(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.str = str;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$Launching;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "equals", "", AdnName.OTHER, "", "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Launching extends HMMessage {

        @NotNull
        public static final Launching INSTANCE = new Launching();

        private Launching() {
            super("launching", null);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Launching)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 210740184;
        }

        @NotNull
        public String toString() {
            return "Launching";
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$Log;", "Lcom/join/mgps/cloud/bean/HMMessage;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Log extends HMMessage {

        @NotNull
        private final String message;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Log(@NotNull String message) {
            super("log", null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }

        @NotNull
        public final String getMessage() {
            return this.message;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$ReqCapScreen;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "equals", "", AdnName.OTHER, "", "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ReqCapScreen extends HMMessage {

        @NotNull
        public static final ReqCapScreen INSTANCE = new ReqCapScreen();

        private ReqCapScreen() {
            super("reqCapScreen", null);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ReqCapScreen)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 972314295;
        }

        @NotNull
        public String toString() {
            return "ReqCapScreen";
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$SendMessageResult;", "Lcom/join/mgps/cloud/bean/HMMessage;", "success", "", "mid", "", "<init>", "(ZLjava/lang/String;)V", "getSuccess", "()Z", "getMid", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", AdnName.OTHER, "", "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class SendMessageResult extends HMMessage {

        @NotNull
        private final String mid;
        private final boolean success;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SendMessageResult(boolean z10, @NotNull String mid) {
            super("sendMessageResult", null);
            Intrinsics.checkNotNullParameter(mid, "mid");
            this.success = z10;
            this.mid = mid;
        }

        public static /* synthetic */ SendMessageResult copy$default(SendMessageResult sendMessageResult, boolean z10, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = sendMessageResult.success;
            }
            if ((i10 & 2) != 0) {
                str = sendMessageResult.mid;
            }
            return sendMessageResult.copy(z10, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getSuccess() {
            return this.success;
        }

        @NotNull
        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getMid() {
            return this.mid;
        }

        @NotNull
        public final SendMessageResult copy(boolean success, @NotNull String mid) {
            Intrinsics.checkNotNullParameter(mid, "mid");
            return new SendMessageResult(success, mid);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SendMessageResult)) {
                return false;
            }
            SendMessageResult sendMessageResult = (SendMessageResult) other;
            return this.success == sendMessageResult.success && Intrinsics.areEqual(this.mid, sendMessageResult.mid);
        }

        @NotNull
        public final String getMid() {
            return this.mid;
        }

        public final boolean getSuccess() {
            return this.success;
        }

        public int hashCode() {
            return (a.a(this.success) * 31) + this.mid.hashCode();
        }

        @NotNull
        public String toString() {
            return "SendMessageResult(success=" + this.success + ", mid=" + this.mid + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$Start;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "gameId", "", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", HMCloudMainActivity_.ARCHIVE_DATA_EXTRA, "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getArchiveData", "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "setArchiveData", "(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Start extends HMMessage {

        @Nullable
        private ArchiveData archiveData;

        @NotNull
        private String gameId;

        public Start() {
            super("start", null);
            this.gameId = "";
        }

        @Nullable
        public final ArchiveData getArchiveData() {
            return this.archiveData;
        }

        @NotNull
        public final String getGameId() {
            return this.gameId;
        }

        public final void setArchiveData(@Nullable ArchiveData archiveData) {
            this.archiveData = archiveData;
        }

        public final void setGameId(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.gameId = str;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$UploadCloudArchive;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "gameId", "", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "imagePath", "getImagePath", "setImagePath", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class UploadCloudArchive extends HMMessage {

        @Nullable
        private String gameId;

        @Nullable
        private String imagePath;

        public UploadCloudArchive() {
            super(HMMessage.ACTION_UPLOAD_CLOUD_ARCHIVE, null);
        }

        @Nullable
        public final String getGameId() {
            return this.gameId;
        }

        @Nullable
        public final String getImagePath() {
            return this.imagePath;
        }

        public final void setGameId(@Nullable String str) {
            this.gameId = str;
        }

        public final void setImagePath(@Nullable String str) {
            this.imagePath = str;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$UserInfo;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "userId", "", "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "accountData", "getAccountData", "setAccountData", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class UserInfo extends HMMessage {

        @NotNull
        private String accountData;

        @NotNull
        private String userId;

        public UserInfo() {
            super(HMMessage.ACTION_USER_INFO, null);
            this.userId = "";
            this.accountData = "";
        }

        @NotNull
        public final String getAccountData() {
            return this.accountData;
        }

        @NotNull
        public final String getUserId() {
            return this.userId;
        }

        public final void setAccountData(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.accountData = str;
        }

        public final void setUserId(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.userId = str;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/join/mgps/cloud/bean/HMMessage$UserInfoReady;", "Lcom/join/mgps/cloud/bean/HMMessage;", "<init>", "()V", "equals", "", AdnName.OTHER, "", "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class UserInfoReady extends HMMessage {

        @NotNull
        public static final UserInfoReady INSTANCE = new UserInfoReady();

        private UserInfoReady() {
            super("userInfoReady", null);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UserInfoReady)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1681575443;
        }

        @NotNull
        public String toString() {
            return "UserInfoReady";
        }
    }

    public /* synthetic */ HMMessage(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @NotNull
    public final String getAction() {
        return this.action;
    }

    public final void setAction(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.action = str;
    }

    public /* synthetic */ HMMessage(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private HMMessage() {
        this.action = "";
    }

    private HMMessage(String str) {
        this.action = str;
    }
}
