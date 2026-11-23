package com.join.mgps.dto.hmcloud;

import com.kwad.sdk.api.model.AdnName;
import com.umeng.ccg.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u000b\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000eB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u000b\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019¨\u0006\u001a"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMMenuAction;", "", "<init>", "()V", "RelaunchGame", "BackToApp", "AddTime", "RefreshResolutionInfo", "MenuClose", "ShowUploadArchive", "OnMenuHide", "EditOp", "EditOpClose", "OnSwitchResolution", "ChargeCloudVip", "Lcom/join/mgps/dto/hmcloud/HMMenuAction$AddTime;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction$BackToApp;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction$ChargeCloudVip;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOp;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction$MenuClose;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction$OnMenuHide;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction$OnSwitchResolution;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction$RefreshResolutionInfo;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction$RelaunchGame;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction$ShowUploadArchive;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class HMMenuAction {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMMenuAction$AddTime;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AddTime extends HMMenuAction {

        @NotNull
        public static final AddTime INSTANCE = new AddTime();

        private AddTime() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMMenuAction$BackToApp;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class BackToApp extends HMMenuAction {

        @NotNull
        public static final BackToApp INSTANCE = new BackToApp();

        private BackToApp() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMMenuAction$ChargeCloudVip;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction;", "chatId", "", "id", "name", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getChatId", "()Ljava/lang/String;", "getId", "getName", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ChargeCloudVip extends HMMenuAction {

        @Nullable
        private final String chatId;

        @NotNull
        private final String id;

        @NotNull
        private final String name;

        public /* synthetic */ ChargeCloudVip(String str, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : str, str2, str3);
        }

        @Nullable
        public final String getChatId() {
            return this.chatId;
        }

        @NotNull
        public final String getId() {
            return this.id;
        }

        @NotNull
        public final String getName() {
            return this.name;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChargeCloudVip(@Nullable String str, @NotNull String id2, @NotNull String name) {
            super(null);
            Intrinsics.checkNotNullParameter(id2, "id");
            Intrinsics.checkNotNullParameter(name, "name");
            this.chatId = str;
            this.id = id2;
            this.name = name;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOp;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction;", a.f84982i, "Lcom/join/mgps/dto/hmcloud/HandleCfg;", "isModify", "", "<init>", "(Lcom/join/mgps/dto/hmcloud/HandleCfg;Z)V", "getCfg", "()Lcom/join/mgps/dto/hmcloud/HandleCfg;", "()Z", "component1", "component2", "copy", "equals", AdnName.OTHER, "", "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class EditOp extends HMMenuAction {

        @NotNull
        private final HandleCfg cfg;
        private final boolean isModify;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EditOp(@NotNull HandleCfg cfg, boolean z10) {
            super(null);
            Intrinsics.checkNotNullParameter(cfg, "cfg");
            this.cfg = cfg;
            this.isModify = z10;
        }

        public static /* synthetic */ EditOp copy$default(EditOp editOp, HandleCfg handleCfg, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                handleCfg = editOp.cfg;
            }
            if ((i10 & 2) != 0) {
                z10 = editOp.isModify;
            }
            return editOp.copy(handleCfg, z10);
        }

        @NotNull
        /* JADX INFO: renamed from: component1, reason: from getter */
        public final HandleCfg getCfg() {
            return this.cfg;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getIsModify() {
            return this.isModify;
        }

        @NotNull
        public final EditOp copy(@NotNull HandleCfg cfg, boolean isModify) {
            Intrinsics.checkNotNullParameter(cfg, "cfg");
            return new EditOp(cfg, isModify);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof EditOp)) {
                return false;
            }
            EditOp editOp = (EditOp) other;
            return Intrinsics.areEqual(this.cfg, editOp.cfg) && this.isModify == editOp.isModify;
        }

        @NotNull
        public final HandleCfg getCfg() {
            return this.cfg;
        }

        public int hashCode() {
            return (this.cfg.hashCode() * 31) + r2.a.a(this.isModify);
        }

        public final boolean isModify() {
            return this.isModify;
        }

        @NotNull
        public String toString() {
            return "EditOp(cfg=" + this.cfg + ", isModify=" + this.isModify + ')';
        }

        public /* synthetic */ EditOp(HandleCfg handleCfg, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(handleCfg, (i10 & 2) != 0 ? false : z10);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction;", a.f84982i, "Lcom/join/mgps/dto/hmcloud/HandleCfg;", "success", "", "<init>", "(Lcom/join/mgps/dto/hmcloud/HandleCfg;Z)V", "getCfg", "()Lcom/join/mgps/dto/hmcloud/HandleCfg;", "getSuccess", "()Z", "component1", "component2", "copy", "equals", AdnName.OTHER, "", "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class EditOpClose extends HMMenuAction {

        @Nullable
        private final HandleCfg cfg;
        private final boolean success;

        /* JADX WARN: Multi-variable type inference failed */
        public EditOpClose() {
            this(null, false, 3, 0 == true ? 1 : 0);
        }

        public static /* synthetic */ EditOpClose copy$default(EditOpClose editOpClose, HandleCfg handleCfg, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                handleCfg = editOpClose.cfg;
            }
            if ((i10 & 2) != 0) {
                z10 = editOpClose.success;
            }
            return editOpClose.copy(handleCfg, z10);
        }

        @Nullable
        /* JADX INFO: renamed from: component1, reason: from getter */
        public final HandleCfg getCfg() {
            return this.cfg;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getSuccess() {
            return this.success;
        }

        @NotNull
        public final EditOpClose copy(@Nullable HandleCfg cfg, boolean success) {
            return new EditOpClose(cfg, success);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof EditOpClose)) {
                return false;
            }
            EditOpClose editOpClose = (EditOpClose) other;
            return Intrinsics.areEqual(this.cfg, editOpClose.cfg) && this.success == editOpClose.success;
        }

        @Nullable
        public final HandleCfg getCfg() {
            return this.cfg;
        }

        public final boolean getSuccess() {
            return this.success;
        }

        public int hashCode() {
            HandleCfg handleCfg = this.cfg;
            return ((handleCfg == null ? 0 : handleCfg.hashCode()) * 31) + r2.a.a(this.success);
        }

        @NotNull
        public String toString() {
            return "EditOpClose(cfg=" + this.cfg + ", success=" + this.success + ')';
        }

        public /* synthetic */ EditOpClose(HandleCfg handleCfg, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : handleCfg, (i10 & 2) != 0 ? false : z10);
        }

        public EditOpClose(@Nullable HandleCfg handleCfg, boolean z10) {
            super(null);
            this.cfg = handleCfg;
            this.success = z10;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMMenuAction$MenuClose;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class MenuClose extends HMMenuAction {

        @NotNull
        public static final MenuClose INSTANCE = new MenuClose();

        private MenuClose() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMMenuAction$OnMenuHide;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction;", "isHide", "", "<init>", "(Z)V", "()Z", "component1", "copy", "equals", AdnName.OTHER, "", "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class OnMenuHide extends HMMenuAction {
        private final boolean isHide;

        public OnMenuHide(boolean z10) {
            super(null);
            this.isHide = z10;
        }

        public static /* synthetic */ OnMenuHide copy$default(OnMenuHide onMenuHide, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = onMenuHide.isHide;
            }
            return onMenuHide.copy(z10);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsHide() {
            return this.isHide;
        }

        @NotNull
        public final OnMenuHide copy(boolean isHide) {
            return new OnMenuHide(isHide);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OnMenuHide) && this.isHide == ((OnMenuHide) other).isHide;
        }

        public int hashCode() {
            return r2.a.a(this.isHide);
        }

        public final boolean isHide() {
            return this.isHide;
        }

        @NotNull
        public String toString() {
            return "OnMenuHide(isHide=" + this.isHide + ')';
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMMenuAction$OnSwitchResolution;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction;", "id", "", "<init>", "(Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "component1", "copy", "equals", "", AdnName.OTHER, "", "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class OnSwitchResolution extends HMMenuAction {

        @NotNull
        private final String id;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnSwitchResolution(@NotNull String id2) {
            super(null);
            Intrinsics.checkNotNullParameter(id2, "id");
            this.id = id2;
        }

        public static /* synthetic */ OnSwitchResolution copy$default(OnSwitchResolution onSwitchResolution, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = onSwitchResolution.id;
            }
            return onSwitchResolution.copy(str);
        }

        @NotNull
        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        @NotNull
        public final OnSwitchResolution copy(@NotNull String id2) {
            Intrinsics.checkNotNullParameter(id2, "id");
            return new OnSwitchResolution(id2);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OnSwitchResolution) && Intrinsics.areEqual(this.id, ((OnSwitchResolution) other).id);
        }

        @NotNull
        public final String getId() {
            return this.id;
        }

        public int hashCode() {
            return this.id.hashCode();
        }

        @NotNull
        public String toString() {
            return "OnSwitchResolution(id=" + this.id + ')';
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMMenuAction$RefreshResolutionInfo;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class RefreshResolutionInfo extends HMMenuAction {

        @NotNull
        public static final RefreshResolutionInfo INSTANCE = new RefreshResolutionInfo();

        private RefreshResolutionInfo() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMMenuAction$RelaunchGame;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class RelaunchGame extends HMMenuAction {

        @NotNull
        public static final RelaunchGame INSTANCE = new RelaunchGame();

        private RelaunchGame() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMMenuAction$ShowUploadArchive;", "Lcom/join/mgps/dto/hmcloud/HMMenuAction;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ShowUploadArchive extends HMMenuAction {

        @NotNull
        public static final ShowUploadArchive INSTANCE = new ShowUploadArchive();

        private ShowUploadArchive() {
            super(null);
        }
    }

    public /* synthetic */ HMMenuAction(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private HMMenuAction() {
    }
}
