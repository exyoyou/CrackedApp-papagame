package com.join.android.app.common.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import com.MApplication;
import com.byazt.hv.TTDownloadField;
import com.byazt.tk.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.coremedia.iso.boxes.g0;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.StartGameMeta;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w0;
import com.join.mgps.activity.CloudGameIndexActivity_;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.activity.MiniGameLoadingActivity_;
import com.join.mgps.activity.ModGameIndexActivity;
import com.join.mgps.activity.ModGameIndexActivity_;
import com.join.mgps.activity.WarningDialogActivity;
import com.join.mgps.activity.arena.ArenaGameListActivity_;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dialog.q2;
import com.join.mgps.dialog.r2;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.GameStartType;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.SingleGameModInfoBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.mod.bean.ModMeta;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.PackageInstallWatch;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.papa.sim.statistic.u;
import com.papa91.arc.ext.ThreadManager;
import com.papa91.common.BaseAppConfig;
import com.umeng.commonsdk.UMConfigure;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.androidannotations.annotations.EBean;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@EBean(scope = EBean.Scope.Singleton)
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0005\b\u0017\u0018\u0000 ;2\u00020\u0001:\u00039:;B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0016\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\tJ.\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J0\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\tH\u0017J\u0016\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000fJ\u001a\u0010\u0016\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\tJ\u001a\u0010\u0016\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u001a\u0010\u001a\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u001a\u0010\u001b\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u001cJ$\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u001e\u001a\u00020\u001fH\u0007J\u001a\u0010 \u001a\u00060!R\u00020\u00002\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019J\u001a\u0010#\u001a\u00060!R\u00020\u00002\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\"\u0010#\u001a\u00060!R\u00020\u00002\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0018\u0010%\u001a\f\u0012\b\u0012\u00060!R\u00020\u00000&2\u0006\u0010\"\u001a\u00020\u0007J\u0018\u0010'\u001a\f\u0012\b\u0012\u00060!R\u00020\u00000&2\u0006\u0010\"\u001a\u00020\u0007J\u001a\u0010(\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010)\u001a\u0004\u0018\u00010\tJ\u0010\u0010*\u001a\u00020\u00052\b\u0010+\u001a\u0004\u0018\u00010\u0019J\"\u0010,\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010\t2\b\u0010.\u001a\u0004\u0018\u00010\tJ-\u0010/\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u000301002\n\u00102\u001a\u0006\u0012\u0002\b\u0003012\u0006\u00103\u001a\u00020\tH\u0002¢\u0006\u0002\u00104J\u0010\u00105\u001a\u00020\u00052\b\u00106\u001a\u0004\u0018\u000107J\u000e\u00108\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006<"}, d2 = {"Lcom/join/android/app/common/utils/APKUtils;", "", "<init>", "()V", "open", "", "context", "Landroid/content/Context;", "pak", "", "unAPP", "packageName", BaseAppConfig.KEY_ACTIVITY_NAME, "wrapGameMeta", g0.f24873q, "Lcom/join/mgps/Util/StartGameMeta;", "netMode", "", Constants.WS_MESSAGE_TYPE_INTENT, "Landroid/content/Intent;", "startGameMeta", "openInNetMode", "installAPK", "apkFilePath", "apkFile", "Ljava/io/File;", "installApk2Mobile", "installApk3Mobile", "Landroid/net/Uri;", "checkInstall", "type", "Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;", "getUninstallAPKInfo", "Lcom/join/android/app/common/utils/APKUtils$APKInfo;", "ctx", "getInstallAPKInfo", "pkg", "getInstallApkInfo", "", "getInstallSystemApkInfo", "getPackageName", "FilePath", "installInSilence", "file", "copyApkFromAssets", "fileName", "path", "getParamTypes", "", "Ljava/lang/Class;", "cls", "mName", "(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/Class;", "parseSignature", "signature", "", "isQuarkInstall", "APKInfo", "DEVICE_TYPE", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAPKUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APKUtils.kt\ncom/join/android/app/common/utils/APKUtils\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,2010:1\n108#2:2011\n80#2,22:2012\n1#3:2034\n37#4:2035\n36#4,3:2036\n*S KotlinDebug\n*F\n+ 1 APKUtils.kt\ncom/join/android/app/common/utils/APKUtils\n*L\n556#1:2011\n556#1:2012,22\n751#1:2035\n751#1:2036,3\n*E\n"})
public class APKUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final b f34739a = new b(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final String f34740b = "APKUtils";

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u000b\u001a\u00020\u0003J\u0006\u0010\f\u001a\u00020\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\r"}, d2 = {"Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;", "", ArenaGameListActivity_.M_TYPE_EXTRA, "", "mDesc", "", "<init>", "(Ljava/lang/String;IILjava/lang/String;)V", "ALL", "REAL", "VM", HmInputMappingContent.FIELD_VALUE, "desc", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum DEVICE_TYPE {
        ALL(0, "全类型"),
        REAL(1, "真机"),
        VM(2, "虚拟机");

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        @NotNull
        private final String mDesc;
        private final int mType;

        DEVICE_TYPE(int i10, String str) {
            this.mType = i10;
            this.mDesc = str;
        }

        @NotNull
        public static EnumEntries<DEVICE_TYPE> getEntries() {
            return $ENTRIES;
        }

        @NotNull
        /* JADX INFO: renamed from: desc, reason: from getter */
        public final String getMDesc() {
            return this.mDesc;
        }

        /* JADX INFO: renamed from: value, reason: from getter */
        public final int getMType() {
            return this.mType;
        }
    }

    public final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        private String f34741a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f34742b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private String f34743c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        private String f34744d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        private Drawable f34745e;

        public a() {
        }

        @Nullable
        public final String a() {
            return this.f34743c;
        }

        @Nullable
        public final Drawable b() {
            return this.f34745e;
        }

        @Nullable
        public final String c() {
            return this.f34744d;
        }

        public final int d() {
            return this.f34742b;
        }

        @Nullable
        public final String e() {
            return this.f34741a;
        }

        public final void f(@Nullable String str) {
            this.f34743c = str;
        }

        public final void g(@Nullable Drawable drawable) {
            this.f34745e = drawable;
        }

        public final void h(@Nullable String str) {
            this.f34744d = str;
        }

        public final void i(int i10) {
            this.f34742b = i10;
        }

        public final void j(@Nullable String str) {
            this.f34741a = str;
        }
    }

    @SourceDebugExtension({"SMAP\nAPKUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APKUtils.kt\ncom/join/android/app/common/utils/APKUtils$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,2010:1\n37#2:2011\n36#2,3:2012\n37#2:2015\n36#2,3:2016\n37#2:2019\n36#2,3:2020\n*S KotlinDebug\n*F\n+ 1 APKUtils.kt\ncom/join/android/app/common/utils/APKUtils$Companion\n*L\n1374#1:2011\n1374#1:2012,3\n1718#1:2015\n1718#1:2016,3\n1737#1:2019\n1737#1:2020,3\n*E\n"})
    public static final class b {

        public static final class a extends m6.e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Context f34747a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Ref.ObjectRef<EMUApkTable> f34748b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ DownloadTask f34749c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ ExtBean f34750d;

            a(Context context, Ref.ObjectRef<EMUApkTable> objectRef, DownloadTask downloadTask, ExtBean extBean) {
                this.f34747a = context;
                this.f34748b = objectRef;
                this.f34749c = downloadTask;
                this.f34750d = extBean;
            }

            @Override // m6.e, com.join.mgps.callbacks.x
            public void a(Activity act) {
                Intrinsics.checkNotNullParameter(act, "act");
                super.a(act);
                act.finish();
                Context context = this.f34747a;
                if (context != null) {
                    Ref.ObjectRef<EMUApkTable> objectRef = this.f34748b;
                    APKUtils.f34739a.r(context, objectRef.element, this.f34749c);
                }
            }

            @Override // m6.e, com.join.mgps.callbacks.x
            public void b(Activity act) {
                Intrinsics.checkNotNullParameter(act, "act");
                super.b(act);
                act.finish();
            }

            @Override // m6.e, com.join.mgps.callbacks.x
            public void d(Activity activity) {
                String crc_link_type_val;
                String crc_link_type_val2;
                super.d(activity);
                if (activity != null) {
                    activity.finish();
                }
                DownloadTask downloadTask = this.f34749c;
                String strReplace$default = null;
                ModInfoBean modInfoBean = downloadTask != null ? downloadTask.getModInfoBean() : null;
                DownloadTask downloadTask2 = this.f34749c;
                String crc_link_type_val3 = downloadTask2 != null ? downloadTask2.getCrc_link_type_val() : null;
                if (modInfoBean != null) {
                    crc_link_type_val3 = modInfoBean.getMod_game_id();
                }
                if (q5.f.M().L(crc_link_type_val3) == null) {
                    DownloadTask downloadTask3 = this.f34749c;
                    DownloadTask downloadTaskCloneOne = downloadTask3 != null ? downloadTask3.cloneOne() : null;
                    downloadTaskCloneOne.setCrc_link_type_val("cld_" + crc_link_type_val3);
                    DownloadTask downloadTask4 = this.f34749c;
                    downloadTaskCloneOne.setRef_crc_sign_id(downloadTask4 != null ? downloadTask4.getCrc_link_type_val() : null);
                    downloadTaskCloneOne.setFileType("CLOUD");
                    downloadTaskCloneOne.setRomType("CLOUD");
                    downloadTaskCloneOne.setStatus(5);
                    q5.f.M().m(downloadTaskCloneOne);
                    org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(downloadTaskCloneOne, 5));
                }
                w0.h().s(this.f34747a, crc_link_type_val3, this.f34750d);
                ExtBean extBean = new ExtBean();
                extBean.setTypeCode("cloudGame");
                ExtBean chatId = extBean.setChatId("expVMInstall32Tips");
                DownloadTask downloadTask5 = this.f34749c;
                ExtBean resourceId = chatId.setResourceId((downloadTask5 == null || (crc_link_type_val2 = downloadTask5.getCrc_link_type_val()) == null) ? null : StringsKt__StringsJVMKt.replace$default(crc_link_type_val2, "cld_", "", false, 4, (Object) null));
                DownloadTask downloadTask6 = this.f34749c;
                if (downloadTask6 != null && (crc_link_type_val = downloadTask6.getCrc_link_type_val()) != null) {
                    strReplace$default = StringsKt__StringsJVMKt.replace$default(crc_link_type_val, "cld_", "", false, 4, (Object) null);
                }
                resourceId.setGameId(strReplace$default);
                extBean.setParent(this.f34750d);
                extBean.buildScene();
                t.l(this.f34747a).R1(Event.gameStart, extBean.toExt());
            }
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit K(Context context, ArchiveData archiveData, DownloadTask downloadTask, String str, String str2) {
            APKUtils.f34739a.L(context, archiveData, downloadTask, str, str2);
            return Unit.INSTANCE;
        }

        public static /* synthetic */ void S(b bVar, Context context, ModInfoBean modInfoBean, String str, ExtBean extBean, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                str = "";
            }
            bVar.O(context, modInfoBean, str, extBean);
        }

        public static /* synthetic */ void T(b bVar, Context context, String str, String str2, String str3, ExtBean extBean, int i10, Object obj) {
            bVar.R(context, str, (i10 & 4) != 0 ? "" : str2, (i10 & 8) != 0 ? "" : str3, extBean);
        }

        public static /* synthetic */ boolean X(b bVar, Context context, String str, boolean z10, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            return bVar.W(context, str, z10);
        }

        private final void Z(Context context, DownloadTask downloadTask, ModMeta modMeta) {
            int i10;
            try {
                com.join.mgps.va.overmind.i.f73262g.i(String.valueOf(downloadTask.getPackageName()), downloadTask.getResource_path());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            com.join.mgps.va.overmind.i.f73262g.d().c0(context, modMeta, downloadTask);
            if (C(downloadTask)) {
                i10 = 1;
            } else {
                i10 = H(downloadTask) ? 2 : 0;
            }
            t.l(context).i1(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(context).getUid(), i10, downloadTask.get_from(), downloadTask.get_from_type(), downloadTask.getExt());
            UtilsMy.Q4(context, downloadTask.getCrc_link_type_val());
            UtilsMy.Z1(context, 12, downloadTask.getCrc_link_type_val());
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final void a0(Context context, DownloadTask downloadTask) {
            if (downloadTask == null || context == null) {
                return;
            }
            downloadTask.setStatus(5);
            if (downloadTask.getRomType() == null || Intrinsics.areEqual(downloadTask.getFileType(), "chajian")) {
                try {
                    a aVarN = g.t0(context).n(context, String.valueOf(downloadTask.getPackageName()));
                    if (aVarN != null) {
                        downloadTask.setVer(aVarN.d() + "");
                        downloadTask.setVer_name(aVarN.e());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } else {
                DownloadHistoryTable downloadHistoryTableP = t6.k.n().p(downloadTask.getCrc_link_type_val());
                if (downloadHistoryTableP != null) {
                    downloadHistoryTableP.setCreate_time(System.currentTimeMillis());
                } else {
                    downloadHistoryTableP = new DownloadHistoryTable();
                    downloadHistoryTableP.setCrc_link_type_val(downloadTask.getCrc_link_type_val());
                    downloadHistoryTableP.setCreate_time(System.currentTimeMillis());
                }
                t6.k.n().m(downloadHistoryTableP);
                UtilsMy.d3(context, downloadTask.getCrc_link_type_val());
                new PrefDef_(context).lastInstallApp().g("");
            }
            try {
                DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                if (downloadTaskG != null) {
                    downloadTaskG.setStatus(5);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            q5.f.M().m0(downloadTask, downloadTask.getStatus());
            downloadTask.setStatus(5);
            com.join.android.app.common.servcie.q.b(context, downloadTask, Event.installAndroidCompleted);
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(downloadTask, 5));
            try {
                File file = new File(downloadTask.getPath());
                if (file.exists()) {
                    UtilsMy.delete(file);
                }
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d0(com.join.mgps.customview.t tVar, CheckBox checkBox, EMUApkTable eMUApkTable, Function0 function0, View view) {
            tVar.dismiss();
            if (checkBox.isChecked()) {
                try {
                    String ver = eMUApkTable.getVer();
                    Intrinsics.checkNotNullExpressionValue(ver, "getVer(...)");
                    eMUApkTable.setNotUpdateversion(Integer.parseInt(((String[]) new Regex("_").split(ver, 0).toArray(new String[0]))[0]));
                    t6.p.o().update(eMUApkTable);
                } catch (NumberFormatException e10) {
                    e10.printStackTrace();
                }
            }
            if (function0 != null) {
                function0.invoke();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e0(com.join.mgps.customview.t tVar, EMUApkTable eMUApkTable, Context context, CheckBox checkBox, View view) {
            if (tVar != null && tVar.isShowing()) {
                tVar.dismiss();
            }
            UtilsMy.q1(eMUApkTable, context);
            if (checkBox.isChecked()) {
                try {
                    String ver = eMUApkTable.getVer();
                    Intrinsics.checkNotNullExpressionValue(ver, "getVer(...)");
                    eMUApkTable.setNotUpdateversion(Integer.parseInt(((String[]) new Regex("_").split(ver, 0).toArray(new String[0]))[0]));
                    t6.p.o().update(eMUApkTable);
                } catch (NumberFormatException e10) {
                    e10.printStackTrace();
                }
            }
        }

        private final boolean h0(PackageInfo packageInfo) {
            try {
                Intrinsics.checkNotNull(packageInfo);
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                Bundle bundle = applicationInfo != null ? applicationInfo.metaData : null;
                return bundle != null && bundle.getInt("PA_APP_USE_CHANNEL_WRITER", 1) == 1;
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void k0(File file, String str, String str2, Function1 function1) {
            boolean zH0;
            boolean zY;
            if (new PrefDef_(MApplication.f3182z).w_channel_info_switch().d().booleanValue()) {
                boolean z10 = false;
                try {
                    PackageManager packageManager = MApplication.f3182z.getPackageManager();
                    String absolutePath = file.getAbsolutePath();
                    Intrinsics.checkNotNull(absolutePath);
                    PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(absolutePath, 128);
                    b bVar = APKUtils.f34739a;
                    zH0 = bVar.h0(packageArchiveInfo);
                    try {
                        zY = bVar.y(packageArchiveInfo);
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                        zY = false;
                    }
                } catch (Exception e11) {
                    e = e11;
                    zH0 = false;
                }
                if (zH0 && zY) {
                    try {
                        HashMap map = new HashMap();
                        map.put("wf_0001", MApplication.K);
                        map.put("wf_0002", MApplication.L);
                        map.put("wf_0003", u.f(MApplication.f3182z).k());
                        map.put("wf_0004", MApplication.A);
                        map.put("wf_0005", u.f(MApplication.f3182z).c());
                        map.put("wf_0006", UMConfigure.getUMIDString(MApplication.f3182z));
                        map.put("wf_0007", MApplication.C);
                        String str3 = MApplication.K;
                        if (str3 != null) {
                            if (str3.length() > 0) {
                                z10 = true;
                            }
                        }
                        map.put("wf_0008", z10 ? MApplication.K : q.n(MApplication.f3182z).i());
                        map.put("wf_0009", "517");
                        map.put("wf_0010", com.join.android.app.mgsim.wufun.b.f35535h);
                        map.put("wf_0011", str);
                        map.put("wf_0012", str2);
                        k5.b.c(file, MApplication.B, map);
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                }
            }
            if (function1 != null) {
                String absolutePath2 = file.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
                function1.invoke(absolutePath2);
            }
        }

        public static /* synthetic */ void n(b bVar, DownloadTask downloadTask, long j10, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                j10 = 86400000;
            }
            bVar.m(downloadTask, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void s() {
            MApplication.f3170c2 = true;
        }

        /* JADX WARN: Code duplicated, block: B:9:0x000c  */
        private final boolean y(PackageInfo packageInfo) {
            Bundle bundle;
            if (packageInfo != null) {
                try {
                    ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                    if (applicationInfo != null) {
                        bundle = applicationInfo.metaData;
                    } else {
                        bundle = null;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return false;
                }
            } else {
                bundle = null;
            }
            return ((bundle != null ? bundle.getInt("PA_GAME_ID", 0) : 0) != 0) | ((bundle != null ? bundle.getInt("PA_APP_KEY", 0) : 0) != 0);
        }

        public final boolean A(@NotNull Context context, @NotNull String pkg) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(pkg, "pkg");
            try {
                context.getPackageManager().getPackageInfo(pkg, 1);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
                return false;
            }
        }

        @JvmStatic
        public final boolean B(@Nullable DownloadTask downloadTask) {
            return downloadTask != null && downloadTask.isMiniGame();
        }

        @JvmStatic
        public final boolean C(@Nullable DownloadTask downloadTask) {
            ModInfoBean modInfoBean;
            if (downloadTask == null || !t2.i(downloadTask.getMod_info()) || (modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class)) == null) {
                return false;
            }
            return Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), modInfoBean.getMod_game_id());
        }

        public final boolean D(@NotNull Context context, @Nullable DownloadTask downloadTask) {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                if (!(ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74786j) == 0) && !H(downloadTask)) {
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 > 33) {
                        ApplicationInfo applicationInfo = context.getApplicationInfo();
                        if ((applicationInfo != null ? applicationInfo.targetSdkVersion : 0) >= 30) {
                            return false;
                        }
                    }
                    if (i10 >= 23) {
                        return true;
                    }
                }
                return false;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @JvmStatic
        public final boolean E(@Nullable DownloadTask downloadTask) {
            return (downloadTask == null || downloadTask.getSp_tag_info() == null || downloadTask.getSp_tag_info().getNet_game_vm() == null || !Intrinsics.areEqual(downloadTask.getSp_tag_info().getNet_game_vm().getId(), "157") || downloadTask.getInstall_type() == DEVICE_TYPE.REAL.getMType()) ? false : true;
        }

        @JvmStatic
        @Nullable
        public final String F(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
            Intrinsics.checkNotNullExpressionValue(installedPackages, "getInstalledPackages(...)");
            int size = installedPackages.size();
            for (int i10 = 0; i10 < size; i10++) {
                String str = installedPackages.get(i10).packageName;
                if (StringsKt__StringsJVMKt.equals(str, "com.tencent.qqlite", true)) {
                    return "com.tencent.qqlite";
                }
                if (StringsKt__StringsJVMKt.equals(str, "com.tencent.mobileqq", true)) {
                    return "com.tencent.mobileqq";
                }
            }
            return null;
        }

        @JvmStatic
        public final boolean G(@Nullable DownloadTask downloadTask) {
            return (downloadTask == null || downloadTask.getSp_tag_info() == null || downloadTask.getSp_tag_info().getSingle_game_vm() == null || !Intrinsics.areEqual(downloadTask.getSp_tag_info().getSingle_game_vm().getId(), "163") || downloadTask.getInstall_type() == DEVICE_TYPE.REAL.getMType()) ? false : true;
        }

        @JvmStatic
        public final boolean H(@Nullable DownloadTask downloadTask) {
            if (E(downloadTask) || G(downloadTask)) {
                return true;
            }
            if (G(downloadTask) && B(downloadTask)) {
                return true;
            }
            return downloadTask != null && downloadTask.isH5VmGame();
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0018  */
        @JvmStatic
        public final boolean I(@Nullable Context context, @Nullable EMUApkTable eMUApkTable) {
            PackageInfo packageInfo;
            ApplicationInfo applicationInfo;
            if (eMUApkTable == null) {
                return false;
            }
            String str = null;
            if (context != null) {
                try {
                    PackageManager packageManager = context.getPackageManager();
                    if (packageManager != null) {
                        packageInfo = packageManager.getPackageInfo(eMUApkTable.getPackage_name(), 0);
                    } else {
                        packageInfo = null;
                    }
                } catch (Exception e10) {
                    e10.getLocalizedMessage();
                    return false;
                }
            } else {
                packageInfo = null;
            }
            com.join.mgps.va.overmind.c.a aVar = com.join.mgps.va.overmind.c.f73257a;
            if (packageInfo != null && (applicationInfo = packageInfo.applicationInfo) != null) {
                str = applicationInfo.sourceDir;
            }
            Set<String> setE = aVar.e(str);
            return (aVar.a(setE) && !com.join.mgps.va.overmind.i.f73262g.g()) || (aVar.b(setE) && com.join.mgps.va.overmind.i.f73262g.g());
        }

        @JvmStatic
        public final void J(@NotNull final Context context, @NotNull final ArchiveData archiveData, @NotNull final String fingerSwitch, @NotNull final String introdSwitch, @NotNull final DownloadTask downloadTask) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(archiveData, "archiveData");
            Intrinsics.checkNotNullParameter(fingerSwitch, "fingerSwitch");
            Intrinsics.checkNotNullParameter(introdSwitch, "introdSwitch");
            Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
            if (com.join.mgps.va.overmind.i.f73262g.d().R(downloadTask.getPackageName()) && (g(context, downloadTask) || j(context, new Function0() { // from class: com.join.android.app.common.utils.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return APKUtils.b.K(context, archiveData, downloadTask, fingerSwitch, introdSwitch);
                }
            }))) {
                return;
            }
            L(context, archiveData, downloadTask, fingerSwitch, introdSwitch);
        }

        public final void L(@NotNull Context context, @NotNull ArchiveData archiveData, @NotNull DownloadTask downloadTask, @NotNull String fingerSwitch, @NotNull String introdSwitch) {
            int i10;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(archiveData, "archiveData");
            Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
            Intrinsics.checkNotNullParameter(fingerSwitch, "fingerSwitch");
            Intrinsics.checkNotNullParameter(introdSwitch, "introdSwitch");
            com.join.mgps.va.overmind.i.a aVar = com.join.mgps.va.overmind.i.f73262g;
            com.join.mgps.va.overmind.i iVarD = aVar.d();
            String packageName = archiveData.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
            int userId = archiveData.getUserId();
            String mainArchiveLocalPath = archiveData.getMainArchiveLocalPath();
            Intrinsics.checkNotNullExpressionValue(mainArchiveLocalPath, "getMainArchiveLocalPath(...)");
            String mainArchiveLocalPath2 = archiveData.getMainArchiveLocalPath2();
            String id2 = archiveData.getId();
            Intrinsics.checkNotNullExpressionValue(id2, "getId(...)");
            iVarD.E(packageName, userId, mainArchiveLocalPath, mainArchiveLocalPath2, id2);
            try {
                aVar.i(downloadTask.getPackageName(), downloadTask.getResource_path());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            ModMeta modMeta = new ModMeta();
            if (C(downloadTask)) {
                ModInfoBean modInfoBean = downloadTask.getModInfoBean();
                if (modInfoBean != null) {
                    int ver = modInfoBean.getVer();
                    modMeta.setModVersion(String.valueOf(ver));
                    modMeta.setModCode(ver);
                }
                i10 = 1;
            } else if (H(downloadTask)) {
                SingleGameModInfoBean singleGameModInfoBean = downloadTask.getSingleGameModInfoBean();
                if (singleGameModInfoBean != null) {
                    int iIntValue = singleGameModInfoBean.getVersion().intValue();
                    modMeta.setModVersion(String.valueOf(iIntValue));
                    modMeta.setModCode(iIntValue);
                }
                i10 = 2;
            } else {
                i10 = 0;
            }
            modMeta.setPackageName(downloadTask.getPackageName());
            modMeta.setModPath(downloadTask.getResource_path());
            modMeta.setGameId(downloadTask.getCrc_link_type_val());
            modMeta.setGoldFingerSwitch(fingerSwitch);
            modMeta.setIntroductionSwitch(introdSwitch);
            modMeta.setArchiveCloudSwitch("1");
            modMeta.setTypeId(UtilsMy.g2(downloadTask));
            com.join.mgps.va.overmind.i.f73262g.d().b0(context, modMeta, archiveData.getUserId(), downloadTask.getMod_info());
            t.l(context).i1(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(context).getUid(), i10, downloadTask.get_from(), downloadTask.get_from_type(), downloadTask.getExt());
            UtilsMy.Q4(context, downloadTask.getCrc_link_type_val());
            if (downloadTask.getModInfoBean() == null) {
                UtilsMy.Z1(context, 12, downloadTask.getCrc_link_type_val());
            } else {
                UtilsMy.Q4(context, downloadTask.getModInfoBean().getMain_game_id());
                UtilsMy.Z1(context, 12, downloadTask.getModInfoBean().getMain_game_id());
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @JvmStatic
        public final void M(@NotNull Context context, @NotNull DownloadTask downloadTask) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
            if (downloadTask.isMiniGame()) {
                ((MiniGameLoadingActivity_.d) MiniGameLoadingActivity_.intent(context).flags(C.ENCODING_PCM_MU_LAW)).b(downloadTask.getStatus() == 5).a(downloadTask.getCrc_link_type_val()).start();
            }
        }

        @JvmStatic
        @JvmOverloads
        public final void N(@Nullable Context context, @NotNull ModInfoBean bean, @Nullable ExtBean extBean) {
            Intrinsics.checkNotNullParameter(bean, "bean");
            S(this, context, bean, null, extBean, 4, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void O(@Nullable Context context, @NotNull ModInfoBean bean, @Nullable String str, @Nullable ExtBean extBean) {
            Intrinsics.checkNotNullParameter(bean, "bean");
            ModGameIndexActivity_.intent(context).b(bean.getMod_game_id()).a(str).c(extBean).d(bean.getMain_game_id()).start();
            if (context instanceof ModGameIndexActivity_) {
                ((ModGameIndexActivity_) context).finish();
            }
        }

        @JvmStatic
        @JvmOverloads
        public final void P(@Nullable Context context, @NotNull String gameId, @Nullable ExtBean extBean) {
            Intrinsics.checkNotNullParameter(gameId, "gameId");
            T(this, context, gameId, null, null, extBean, 12, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void Q(@Nullable Context context, @NotNull String gameId, @NotNull String modGameId, @Nullable ExtBean extBean) {
            Intrinsics.checkNotNullParameter(gameId, "gameId");
            Intrinsics.checkNotNullParameter(modGameId, "modGameId");
            T(this, context, gameId, modGameId, null, extBean, 8, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void R(@Nullable Context context, @NotNull String gameId, @NotNull String modGameId, @Nullable String str, @Nullable ExtBean extBean) {
            Intrinsics.checkNotNullParameter(gameId, "gameId");
            Intrinsics.checkNotNullParameter(modGameId, "modGameId");
            ModGameIndexActivity_.intent(context).b(modGameId).a(str).d(gameId).c(extBean).start();
            if (context instanceof ModGameIndexActivity_) {
                ((ModGameIndexActivity_) context).finish();
            }
        }

        @JvmStatic
        public final boolean U(@NotNull Context context, @NotNull String packageName) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            List<DownloadTask> listI = q5.f.M().I(packageName);
            List<DownloadTask> list = listI;
            if ((list == null || list.isEmpty()) || !UtilsMy.k2(context, listI.get(0), null, GameStartType.openThirdApp, 0)) {
                return false;
            }
            return V(context, packageName);
        }

        @JvmStatic
        public final boolean V(@NotNull Context context, @NotNull String packageName) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            return W(context, packageName, false);
        }

        @JvmStatic
        public final boolean W(@NotNull Context context, @NotNull String packageName, boolean z10) {
            List<ResolveInfo> listQueryIntentActivities;
            int size;
            int i10;
            String str;
            List<DownloadTask> listI;
            DownloadTask downloadTask;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            if (!z10 && (listI = q5.f.M().I(packageName)) != null && listI.size() > 0 && (downloadTask = listI.get(0)) != null) {
                MApplication.f3182z.p().lastLaunchModGameId().g(downloadTask.getCrc_link_type_val());
                UtilsMy.Z1(context, 12, downloadTask.getCrc_link_type_val());
            }
            PackageManager packageManager = context.getPackageManager();
            try {
                try {
                    Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(packageName);
                    if (launchIntentForPackage != null) {
                        context.startActivity(launchIntentForPackage);
                        MApplication.f3182z.O(true);
                        return true;
                    }
                    while (true) {
                        if (i10 >= size) {
                            str = null;
                            break;
                        }
                        ResolveInfo resolveInfo = listQueryIntentActivities.get(i10);
                        if (Intrinsics.areEqual(resolveInfo.activityInfo.packageName, packageName)) {
                            str = resolveInfo.activityInfo.name;
                            break;
                        }
                        i10++;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setPackage(packageName);
                listQueryIntentActivities = packageManager.queryIntentActivities(intent, 1);
                Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities, "queryIntentActivities(...)");
                size = listQueryIntentActivities.size();
                i10 = 0;
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
                Intrinsics.checkNotNull(str);
                intent.setComponent(new ComponentName(packageName, str));
                context.startActivity(intent);
                MApplication.f3182z.O(true);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            return true;
        }

        @JvmStatic
        public final void Y(@NotNull Context context, @NotNull DownloadTask downloadTask) {
            SingleGameModInfoBean singleGameModInfoBean;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
            ModMeta modMeta = new ModMeta();
            modMeta.setPackageName(downloadTask.getPackageName());
            modMeta.setModPath(downloadTask.getResource_path());
            if (G(downloadTask) && (singleGameModInfoBean = downloadTask.getSingleGameModInfoBean()) != null) {
                modMeta.setModVersion(singleGameModInfoBean.getVersion() + "");
                modMeta.setModCode(singleGameModInfoBean.getVersion().intValue());
            }
            modMeta.setGameId(downloadTask.getCrc_link_type_val());
            modMeta.setModType(1);
            modMeta.setTypeId(UtilsMy.g2(downloadTask));
            Z(context, downloadTask, modMeta);
        }

        @JvmStatic
        public final void b0(@Nullable Activity activity) {
            EMUApkTable eMUApkTableN;
            if (((activity instanceof MGMainActivity_) || (activity instanceof ModGameIndexActivity_) || (activity instanceof CloudGameIndexActivity_)) && MApplication.f3170c2 && !activity.isFinishing() && !activity.isDestroyed()) {
                if (com.join.mgps.va.overmind.i.f73262g.g()) {
                    eMUApkTableN = t6.p.o().n(ConstantIntEnum.VA32.value() + "");
                } else {
                    eMUApkTableN = t6.p.o().n(ConstantIntEnum.VA64.value() + "");
                }
                if (Overmind.isPluginPkgInstalled() || eMUApkTableN == null) {
                    return;
                }
                r2 r2Var = new r2(activity);
                DownloadTask downloadTaskG = q5.f.M().G(new PrefDef_(activity).launchGameIdCheckVaExtInstall().d());
                if (downloadTaskG != null) {
                    r2Var.a(downloadTaskG, eMUApkTableN);
                    MApplication.f3170c2 = false;
                    t.l(activity).R1(Event.expVMInstall32TwoTips, new Ext().setGameId(new PrefDef_(activity).launchGameIdCheckVaExtInstall().d()));
                    new PrefDef_(activity).launchGameIdCheckVaExtInstall().g("");
                }
            }
        }

        public final void c0(@Nullable final Context context, @NotNull final EMUApkTable emuApkTable, @NotNull final Function0<Unit> callback) {
            Intrinsics.checkNotNullParameter(emuApkTable, "emuApkTable");
            Intrinsics.checkNotNullParameter(callback, "callback");
            Context activity = MApplication.f3182z.getActivity();
            if (activity == null) {
                activity = context;
            }
            final com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(activity, R.style.MyDialog);
            tVar.setContentView(R.layout.plug_update_dialog_layout);
            TextView textView = (TextView) tVar.findViewById(R.id.title);
            TextView textView2 = (TextView) tVar.findViewById(R.id.content);
            final CheckBox checkBox = (CheckBox) tVar.findViewById(R.id.checkbox);
            textView.setText(emuApkTable.getApk_name());
            textView2.setText(Html.fromHtml(emuApkTable.getVer_info()));
            View viewFindViewById = tVar.findViewById(R.id.dialog_button_ok);
            Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.widget.Button");
            View viewFindViewById2 = tVar.findViewById(R.id.dialog_button_cancle);
            Intrinsics.checkNotNull(viewFindViewById2, "null cannot be cast to non-null type android.widget.Button");
            ((Button) viewFindViewById2).setOnClickListener(new View.OnClickListener() { // from class: com.join.android.app.common.utils.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    APKUtils.b.d0(tVar, checkBox, emuApkTable, callback, view);
                }
            });
            ((Button) viewFindViewById).setOnClickListener(new View.OnClickListener() { // from class: com.join.android.app.common.utils.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    APKUtils.b.e0(tVar, emuApkTable, context, checkBox, view);
                }
            });
            tVar.setCancelable(true);
            tVar.show();
        }

        @JvmStatic
        public final void f0(@NotNull DownloadTask downloadTask) {
            EMUApkTable eMUApkTableN;
            Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
            if (downloadTask.isMod() || downloadTask.isSingleGame()) {
                if (com.join.mgps.va.overmind.i.f73262g.g()) {
                    eMUApkTableN = t6.p.o().n(ConstantIntEnum.VA32.value() + "");
                } else {
                    eMUApkTableN = t6.p.o().n(ConstantIntEnum.VA64.value() + "");
                }
                if (eMUApkTableN != null) {
                    if (!Overmind.isPluginPkgInstalled() || I(MApplication.n(), eMUApkTableN)) {
                        UtilsMy.r1(eMUApkTableN, MApplication.n(), Boolean.FALSE);
                    }
                }
            }
        }

        @JvmStatic
        public final boolean g(@Nullable Context context, @Nullable DownloadTask downloadTask) {
            return h(context, downloadTask, null);
        }

        @JvmStatic
        public final boolean g0(@Nullable DownloadTask downloadTask, @NotNull String type) {
            Intrinsics.checkNotNullParameter(type, "type");
            boolean z10 = false;
            if (downloadTask != null && !t2.h(type)) {
                Iterator<TipBean> it2 = downloadTask.getTipBeans().iterator();
                while (it2.hasNext()) {
                    if (Intrinsics.areEqual(type, it2.next().getId())) {
                        z10 = true;
                    }
                }
            }
            return z10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @JvmStatic
        public final boolean h(@Nullable Context context, @Nullable DownloadTask downloadTask, @Nullable ExtBean extBean) {
            T tN;
            String crc_link_type_val;
            String crc_link_type_val2;
            String strReplace$default = null;
            Activity activity = context instanceof Activity ? (Activity) context : null;
            if (activity == null) {
                activity = MApplication.f3182z.getActivity();
            }
            if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
                return false;
            }
            new PrefDef_(context).launchGameIdCheckVaExtInstall().g(downloadTask != null ? downloadTask.getCrc_link_type_val() : null);
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            if (com.join.mgps.va.overmind.i.f73262g.g()) {
                tN = t6.p.o().n(ConstantIntEnum.VA32.value() + "");
            } else {
                tN = t6.p.o().n(ConstantIntEnum.VA64.value() + "");
            }
            objectRef.element = tN;
            if (Overmind.isPluginPkgInstalled() && !I(activity, (EMUApkTable) objectRef.element)) {
                return false;
            }
            if (objectRef.element != 0) {
                WarningDialogActivity.WarningDialogParam warningDialogParam = new WarningDialogActivity.WarningDialogParam();
                warningDialogParam.setGameId(downloadTask != null ? downloadTask.getCrc_link_type_val() : null);
                if ((downloadTask != null && downloadTask.isCloudGame()) && w0.j()) {
                    warningDialogParam.setType(3);
                    warningDialogParam.setPositive("立即安装");
                    warningDialogParam.setNegative("取消");
                } else {
                    warningDialogParam.setType(0);
                    warningDialogParam.setPositive("立即安装");
                    warningDialogParam.setNegative("取消");
                }
                warningDialogParam.setEvent(3);
                warningDialogParam.setTitle("请注意");
                warningDialogParam.setContent("此游戏在您的设备上存在稳定性问题，请先安装稳定性优化插件，再运行游戏");
                Intent intent = new Intent();
                intent.putExtra(WarningDialogActivity.KEY_PARAM, warningDialogParam);
                IntentUtil.getInstance().startActivityWithCallback(context, WarningDialogActivity.class, intent, new a(context, objectRef, downloadTask, extBean));
                t.l(context).R1(Event.gameStartNoCpuTips, new Ext().setGameId(downloadTask != null ? downloadTask.getCrc_link_type_val() : null));
                ExtBean extBean2 = new ExtBean();
                extBean2.setTypeCode("page");
                ExtBean resourceId = extBean2.setChatId("expVMInstall32Tips").setResourceId((downloadTask == null || (crc_link_type_val2 = downloadTask.getCrc_link_type_val()) == null) ? null : StringsKt__StringsJVMKt.replace$default(crc_link_type_val2, "cld_", "", false, 4, (Object) null));
                if (downloadTask != null && (crc_link_type_val = downloadTask.getCrc_link_type_val()) != null) {
                    strReplace$default = StringsKt__StringsJVMKt.replace$default(crc_link_type_val, "cld_", "", false, 4, (Object) null);
                }
                resourceId.setGameId(strReplace$default);
                extBean2.setParent(extBean);
                extBean2.buildScene();
                t.l(context).R1(Event.commonExp, extBean2.toExt());
            }
            return true;
        }

        @JvmStatic
        public final boolean i(@Nullable Context context, @Nullable CommonGameInfoBean commonGameInfoBean) {
            EMUApkTable eMUApkTableN;
            GInfoBean g_info;
            GInfoBean g_info2;
            Context activity = context == null ? MApplication.f3182z.getActivity() : context;
            String id2 = null;
            new PrefDef_(context).launchGameIdCheckVaExtInstall().g((commonGameInfoBean == null || (g_info2 = commonGameInfoBean.getG_info()) == null) ? null : g_info2.getId());
            if (com.join.mgps.va.overmind.i.f73262g.g()) {
                eMUApkTableN = t6.p.o().n(ConstantIntEnum.VA32.value() + "");
            } else {
                eMUApkTableN = t6.p.o().n(ConstantIntEnum.VA64.value() + "");
            }
            if (Overmind.isPluginPkgInstalled() && !I(activity, eMUApkTableN)) {
                return false;
            }
            if (eMUApkTableN == null || activity == null) {
                return true;
            }
            new q2(activity).b(commonGameInfoBean, eMUApkTableN);
            t tVarL = t.l(context);
            Event event = Event.expVMInstall32Tips;
            Ext ext = new Ext();
            if (commonGameInfoBean != null && (g_info = commonGameInfoBean.getG_info()) != null) {
                id2 = g_info.getId();
            }
            tVarL.R1(event, ext.setGameId(id2));
            return true;
        }

        @JvmStatic
        public final void i0(@NotNull final File apkFile, @NotNull final String from, @NotNull final String p10, @NotNull final Function1<? super String, Unit> callback) {
            Intrinsics.checkNotNullParameter(apkFile, "apkFile");
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(p10, "p");
            Intrinsics.checkNotNullParameter(callback, "callback");
            ThreadManager.runOnWriteThread(new Runnable() { // from class: com.join.android.app.common.utils.f
                @Override // java.lang.Runnable
                public final void run() {
                    APKUtils.b.k0(apkFile, from, p10, callback);
                }
            });
        }

        @JvmStatic
        public final boolean j(@Nullable Context context, @NotNull Function0<Unit> callback) {
            EMUApkTable eMUApkTableN;
            Intrinsics.checkNotNullParameter(callback, "callback");
            if (com.join.mgps.va.overmind.i.f73262g.g()) {
                eMUApkTableN = t6.p.o().n(ConstantIntEnum.VA32.value() + "");
            } else {
                eMUApkTableN = t6.p.o().n(ConstantIntEnum.VA64.value() + "");
            }
            if (UtilsMy.D0(context, eMUApkTableN)) {
                UtilsMy.q1(eMUApkTableN, context);
                return true;
            }
            if (!(eMUApkTableN != null && eMUApkTableN.isCanUpdate())) {
                return false;
            }
            c0(context, eMUApkTableN, callback);
            return true;
        }

        @JvmStatic
        public final void j0(@Nullable String str, @Nullable DownloadTask downloadTask, @NotNull Function1<? super String, Unit> callback) {
            String strValueOf;
            Intrinsics.checkNotNullParameter(callback, "callback");
            String strValueOf2 = "";
            if (str != null) {
                File file = new File(str);
                if (file.exists()) {
                    if (downloadTask != null) {
                        strValueOf2 = String.valueOf(downloadTask.get_from());
                        strValueOf = String.valueOf(downloadTask.get_from_type());
                    } else {
                        strValueOf = "";
                    }
                    APKUtils.f34739a.i0(file, strValueOf2, strValueOf, callback);
                    return;
                }
            }
            if (str == null) {
                str = "";
            }
            callback.invoke(str);
        }

        @JvmStatic
        public final void k(@Nullable DownloadTask downloadTask) {
            boolean z10;
            if (downloadTask != null) {
                try {
                    boolean z11 = true;
                    boolean z12 = false;
                    if (downloadTask.isMod()) {
                        ModInfoBean modInfoBean = downloadTask.getModInfoBean();
                        if (modInfoBean == null || !t2.i(modInfoBean.getCompatible_version()) || !t2.i(modInfoBean.getCompatible_version())) {
                            z10 = false;
                            break;
                        }
                        String compatible_version = modInfoBean.getCompatible_version();
                        Intrinsics.checkNotNullExpressionValue(compatible_version, "getCompatible_version(...)");
                        String[] strArr = (String[]) StringsKt__StringsKt.split$default((CharSequence) compatible_version, new String[]{","}, false, 0, 6, (Object) null).toArray(new String[0]);
                        int length = strArr.length;
                        int i10 = 0;
                        while (true) {
                            if (i10 >= length) {
                                z10 = false;
                                break;
                            } else {
                                if (Intrinsics.areEqual(strArr[i10], modInfoBean.getMain_game_ver())) {
                                    z10 = true;
                                    break;
                                }
                                i10++;
                            }
                        }
                        for (TipBean tipBean : downloadTask.getTipBeans()) {
                            if (!Intrinsics.areEqual(tipBean.getId(), ConstantIntEnum.DATA.value() + "")) {
                                if (!Intrinsics.areEqual(tipBean.getId(), ConstantIntEnum.OBB.value() + "")) {
                                    if (Intrinsics.areEqual(tipBean.getId(), ConstantIntEnum.OBBDATA.value() + "")) {
                                    }
                                }
                            }
                            z12 = true;
                        }
                        z11 = z10;
                    } else if (!H(downloadTask)) {
                        z11 = false;
                    }
                    if (t2.i(downloadTask.getPath())) {
                        File file = new File(downloadTask.getPath());
                        if ((file.exists() && !z11) || (z12 && Build.VERSION.SDK_INT >= 30)) {
                            UtilsMy.delete(file);
                        }
                    }
                    if (t2.i(downloadTask.getGameZipPath())) {
                        File file2 = new File(downloadTask.getGameZipPath());
                        if ((!file2.exists() || z11) && (!z12 || Build.VERSION.SDK_INT < 30)) {
                            return;
                        }
                        UtilsMy.delete(file2);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        @JvmStatic
        @JvmOverloads
        public final void l(@Nullable DownloadTask downloadTask) {
            n(this, downloadTask, 0L, 2, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void m(@Nullable DownloadTask downloadTask, long j10) {
            if (downloadTask == null || System.currentTimeMillis() - downloadTask.getFinishTime() < j10) {
                return;
            }
            if (t2.i(downloadTask.getPath())) {
                File file = new File(downloadTask.getPath());
                if (file.exists()) {
                    UtilsMy.delete(file);
                }
            }
            if (t2.i(downloadTask.getGameZipPath())) {
                File file2 = new File(downloadTask.getGameZipPath());
                if (file2.exists()) {
                    UtilsMy.delete(file2);
                }
            }
        }

        @JvmStatic
        public final int o() {
            String strW = q.w();
            Intrinsics.checkNotNull(strW);
            boolean zContains$default = StringsKt__StringsKt.contains$default((CharSequence) strW, (CharSequence) com.join.mgps.mod.utils.d.f71903e, false, 2, (Object) null);
            boolean zContains$default2 = StringsKt__StringsKt.contains$default((CharSequence) strW, (CharSequence) "64", false, 2, (Object) null);
            if (zContains$default && zContains$default2) {
                return 96;
            }
            return zContains$default2 ? 64 : 32;
        }

        @JvmStatic
        @Nullable
        public final String p(@NotNull Context context, @NotNull String packageName) {
            Signature[] signatureArr;
            Signature signature;
            String charsString;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(64);
            Intrinsics.checkNotNullExpressionValue(installedPackages, "getInstalledPackages(...)");
            Iterator<PackageInfo> it2 = installedPackages.iterator();
            while (it2.hasNext()) {
                PackageInfo next = it2.next();
                if (Intrinsics.areEqual(next != null ? next.packageName : null, packageName)) {
                    if (next == null || (signatureArr = next.signatures) == null || (signature = signatureArr[0]) == null || (charsString = signature.toCharsString()) == null) {
                        return null;
                    }
                    return charsString;
                }
            }
            return null;
        }

        @Nullable
        public final Context q(@NotNull Context context, @NotNull String packageName) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            if (Intrinsics.areEqual(context.getPackageName(), packageName)) {
                return context;
            }
            try {
                return context.createPackageContext(packageName, 3);
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        @JvmStatic
        public final void r(@NotNull Context context, @NotNull EMUApkTable emuApkTable, @Nullable DownloadTask downloadTask) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(emuApkTable, "emuApkTable");
            String tag_id = emuApkTable.getTag_id();
            Intrinsics.checkNotNullExpressionValue(tag_id, "getTag_id(...)");
            DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(tag_id));
            t.l(MApplication.f3182z).R1(Event.clickGameStartNoCpuTips, new Ext().setGameId(downloadTask != null ? downloadTask.getCrc_link_type_val() : null));
            boolean z10 = false;
            if (downloadTaskC0 != null && downloadTaskC0.getStatus() == 11) {
                z10 = true;
            }
            if (z10) {
                if (!TextUtils.isEmpty(downloadTask != null ? downloadTask.getGameZipPath() : null)) {
                    File file = new File(downloadTaskC0.getGameZipPath());
                    if (file.exists()) {
                        g.t0(context).z(context, file);
                        new Handler().postDelayed(new Runnable() { // from class: com.join.android.app.common.utils.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                APKUtils.b.s();
                            }
                        }, 1500L);
                        return;
                    }
                }
            }
            new q2(context).a(downloadTask, emuApkTable);
            t.l(context).R1(Event.expVMInstall32Tips, new Ext().setGameId(downloadTask != null ? downloadTask.getCrc_link_type_val() : null));
        }

        @JvmStatic
        public final void t(@NotNull Context context, @NotNull DownloadTask task) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(task, "task");
            if (APKUtils.g(g.t0(context), context, task.getPackageName(), null, 4, null)) {
                U(context, String.valueOf(task.getPackageName()));
                UtilsMy.Q4(context, task.getCrc_link_type_val());
                UtilsMy.Z1(context, 12, task.getCrc_link_type_val());
                return;
            }
            File file = new File(task.getPath());
            PrefDef_ prefDef_ = new PrefDef_(context);
            if (t2.i(prefDef_.lastLaunchModGameId().d()) && prefDef_.lastLaunchModGameId().d().equals(task.getCrc_link_type_val())) {
                prefDef_.lastLaunchModGameId().g("");
            }
            com.join.mgps.va.overmind.i.f73262g.d().y0(task.getPackageName());
            if (t2.i(task.getPackageName())) {
                UtilsMy.delete(new File(com.join.mgps.va.overmind.k.f73277a.V(String.valueOf(task.getPackageName()))));
            }
            if (t2.i(task.getPackageName())) {
                UtilsMy.delete(new File(com.join.mgps.va.overmind.k.E(com.join.mgps.va.overmind.k.f73277a, String.valueOf(task.getPackageName()), 0, 2, null)));
            }
            if (t2.i(task.getResource_path())) {
                File file2 = new File(task.getResource_path());
                String absolutePath = file2.getParentFile().getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                if (StringsKt__StringsJVMKt.endsWith$default(absolutePath, String.valueOf(task.getPackageName()), false, 2, null)) {
                    UtilsMy.delete(file2.getParentFile());
                } else {
                    UtilsMy.delete(file2);
                }
            }
            task.setStatus(11);
            task.setInstall_type(DEVICE_TYPE.REAL.getMType());
            q5.f.M().m(task);
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(task, 11));
            int i10 = Build.VERSION.SDK_INT;
            if (i10 < 30 && file.exists()) {
                if (Intrinsics.areEqual(task.getRomType(), "androidobb") || Intrinsics.areEqual(task.getRomType(), "androiddata") || Intrinsics.areEqual(task.getRomType(), "androidobbdata")) {
                    com.join.android.app.common.servcie.j.f().z(context, task, false);
                    return;
                } else {
                    g.t0(context).z(context, file);
                    return;
                }
            }
            if (i10 < 30) {
                if (task.getDown_status() == 5) {
                    UtilsMy.l1(context, task);
                    return;
                } else {
                    com.php25.PDownload.d.c(task, context);
                    return;
                }
            }
            if (Intrinsics.areEqual(task.getRomType(), "androidobb") || Intrinsics.areEqual(task.getRomType(), "androiddata") || Intrinsics.areEqual(task.getRomType(), "androidobbdata")) {
                task.setPath("");
                task.setGameZipPath("");
                q5.f.M().m(task);
                UtilsMy.i1(context, task);
                return;
            }
            if (task.getDown_status() == 5) {
                UtilsMy.l1(context, task);
            } else {
                com.php25.PDownload.d.c(task, context);
            }
        }

        @JvmStatic
        public final void u(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            Iterator<PackageInfo> it2 = Overmind.get().getInstalledPackages(0, 0).iterator();
            while (it2.hasNext()) {
                String str = it2.next().packageName;
                MindPackageSettings mindPackageSettingsK = Overmind.getMindPackageManager().k(str);
                if (mindPackageSettingsK == null || mindPackageSettingsK.E()) {
                    List<DownloadTask> listI = q5.f.M().I(str);
                    DownloadTask downloadTask = null;
                    if (listI != null) {
                        for (DownloadTask downloadTask2 : listI) {
                            b bVar = APKUtils.f34739a;
                            if (bVar.C(downloadTask2) || bVar.H(downloadTask2)) {
                                downloadTask = downloadTask2;
                                break;
                            }
                        }
                    }
                    if (downloadTask == null) {
                        continue;
                    } else if (downloadTask.getStatus() == 48) {
                        return;
                    } else {
                        UtilsMy.R0(context, downloadTask);
                    }
                }
            }
        }

        @JvmStatic
        public final void v(@Nullable Context context, @Nullable DownloadTask downloadTask) {
            Intrinsics.checkNotNull(downloadTask);
            if (downloadTask.getTask_down_type() == 0 || downloadTask.getTask_down_type() == 2 || H(downloadTask)) {
                w(context, downloadTask, false);
                return;
            }
            if (downloadTask.getTask_down_type() == 1) {
                downloadTask.setStatus(5);
                q5.f.M().m0(downloadTask, downloadTask.getStatus());
                a0(context, downloadTask);
            } else if (downloadTask.getTask_down_type() == 3) {
                w(context, downloadTask, true);
            }
        }

        @JvmStatic
        public final void w(@Nullable Context context, @Nullable DownloadTask downloadTask, boolean z10) {
            if (downloadTask != null) {
                com.join.mgps.mod.utils.a.a().b(context, downloadTask, z10);
            }
        }

        @JvmStatic
        public final boolean x(@NotNull Context context, @NotNull String packageName) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Object systemService = context.getSystemService(TTDownloadField.TT_ACTIVITY);
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) systemService).getRunningTasks(150);
            if (runningTasks.size() <= 0) {
                return false;
            }
            Iterator<ActivityManager.RunningTaskInfo> it2 = runningTasks.iterator();
            while (it2.hasNext()) {
                ComponentName componentName = it2.next().baseActivity;
                Intrinsics.checkNotNull(componentName);
                if (Intrinsics.areEqual(componentName.getPackageName(), packageName)) {
                    return true;
                }
            }
            return false;
        }

        @JvmStatic
        public final boolean z(int i10) {
            String strW = q.w();
            if (i10 == 32) {
                Intrinsics.checkNotNull(strW);
                return StringsKt__StringsKt.contains$default((CharSequence) strW, (CharSequence) com.join.mgps.mod.utils.d.f71903e, false, 2, (Object) null);
            }
            if (i10 == 64) {
                Intrinsics.checkNotNull(strW);
                return StringsKt__StringsKt.contains$default((CharSequence) strW, (CharSequence) "64", false, 2, (Object) null);
            }
            if (i10 != 96) {
                return true;
            }
            Intrinsics.checkNotNull(strW);
            return StringsKt__StringsKt.contains$default((CharSequence) strW, (CharSequence) "64", false, 2, (Object) null) | StringsKt__StringsKt.contains$default((CharSequence) strW, (CharSequence) com.join.mgps.mod.utils.d.f71903e, false, 2, (Object) null);
        }

        private b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(APKUtils aPKUtils, Context context, File file) {
        PrefDef_ prefDef_ = new PrefDef_(context);
        DownloadTask downloadTaskF = q5.f.M().F(file.getAbsolutePath());
        if (downloadTaskF == null || (MApplication.f3182z.getActivity() instanceof ModGameIndexActivity)) {
            return;
        }
        prefDef_.lastInstallApp().g(downloadTaskF.getCrc_link_type_val());
    }

    @JvmStatic
    public static final void F(@Nullable Context context, @Nullable DownloadTask downloadTask) {
        f34739a.v(context, downloadTask);
    }

    @JvmStatic
    public static final void G(@Nullable Context context, @Nullable DownloadTask downloadTask, boolean z10) {
        f34739a.w(context, downloadTask, z10);
    }

    @JvmStatic
    public static final boolean H(@NotNull Context context, @NotNull String str) {
        return f34739a.x(context, str);
    }

    @JvmStatic
    public static final boolean I(int i10) {
        return f34739a.z(i10);
    }

    @JvmStatic
    public static final boolean J(@Nullable DownloadTask downloadTask) {
        return f34739a.B(downloadTask);
    }

    @JvmStatic
    public static final boolean K(@Nullable DownloadTask downloadTask) {
        return f34739a.C(downloadTask);
    }

    @JvmStatic
    public static final boolean L(@Nullable DownloadTask downloadTask) {
        return f34739a.E(downloadTask);
    }

    @JvmStatic
    @Nullable
    public static final String M(@NotNull Context context) {
        return f34739a.F(context);
    }

    @JvmStatic
    public static final boolean O(@Nullable DownloadTask downloadTask) {
        return f34739a.G(downloadTask);
    }

    @JvmStatic
    public static final boolean P(@Nullable DownloadTask downloadTask) {
        return f34739a.H(downloadTask);
    }

    @JvmStatic
    public static final boolean Q(@Nullable Context context, @Nullable EMUApkTable eMUApkTable) {
        return f34739a.I(context, eMUApkTable);
    }

    public static /* synthetic */ void W(APKUtils aPKUtils, Context context, StartGameMeta startGameMeta, boolean z10, String str, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: open");
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        if ((i10 & 8) != 0) {
            str = null;
        }
        aPKUtils.T(context, startGameMeta, z10, str);
    }

    @JvmStatic
    public static final void X(@NotNull Context context, @NotNull ArchiveData archiveData, @NotNull String str, @NotNull String str2, @NotNull DownloadTask downloadTask) {
        f34739a.J(context, archiveData, str, str2, downloadTask);
    }

    @JvmStatic
    public static final void Z(@NotNull Context context, @NotNull DownloadTask downloadTask) {
        f34739a.M(context, downloadTask);
    }

    @JvmStatic
    @JvmOverloads
    public static final void a0(@Nullable Context context, @NotNull ModInfoBean modInfoBean, @Nullable ExtBean extBean) {
        f34739a.N(context, modInfoBean, extBean);
    }

    @JvmStatic
    public static final boolean b(@Nullable Context context, @Nullable DownloadTask downloadTask) {
        return f34739a.g(context, downloadTask);
    }

    @JvmStatic
    @JvmOverloads
    public static final void b0(@Nullable Context context, @NotNull ModInfoBean modInfoBean, @Nullable String str, @Nullable ExtBean extBean) {
        f34739a.O(context, modInfoBean, str, extBean);
    }

    @JvmStatic
    public static final boolean c(@Nullable Context context, @Nullable DownloadTask downloadTask, @Nullable ExtBean extBean) {
        return f34739a.h(context, downloadTask, extBean);
    }

    @JvmStatic
    @JvmOverloads
    public static final void c0(@Nullable Context context, @NotNull String str, @Nullable ExtBean extBean) {
        f34739a.P(context, str, extBean);
    }

    @JvmStatic
    public static final boolean d(@Nullable Context context, @Nullable CommonGameInfoBean commonGameInfoBean) {
        return f34739a.i(context, commonGameInfoBean);
    }

    @JvmStatic
    @JvmOverloads
    public static final void d0(@Nullable Context context, @NotNull String str, @NotNull String str2, @Nullable ExtBean extBean) {
        f34739a.Q(context, str, str2, extBean);
    }

    @JvmStatic
    @JvmOverloads
    public static final void e0(@Nullable Context context, @NotNull String str, @NotNull String str2, @Nullable String str3, @Nullable ExtBean extBean) {
        f34739a.R(context, str, str2, str3, extBean);
    }

    @JvmStatic
    public static final boolean f0(@NotNull Context context, @NotNull String str) {
        return f34739a.U(context, str);
    }

    public static /* synthetic */ boolean g(APKUtils aPKUtils, Context context, String str, DEVICE_TYPE device_type, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkInstall");
        }
        if ((i10 & 4) != 0) {
            device_type = DEVICE_TYPE.REAL;
        }
        return aPKUtils.f(context, str, device_type);
    }

    @JvmStatic
    public static final boolean g0(@NotNull Context context, @NotNull String str) {
        return f34739a.V(context, str);
    }

    @JvmStatic
    public static final boolean h(@Nullable Context context, @NotNull Function0<Unit> function0) {
        return f34739a.j(context, function0);
    }

    @JvmStatic
    public static final boolean h0(@NotNull Context context, @NotNull String str, boolean z10) {
        return f34739a.W(context, str, z10);
    }

    @JvmStatic
    public static final void i0(@NotNull Context context, @NotNull DownloadTask downloadTask) {
        f34739a.Y(context, downloadTask);
    }

    @JvmStatic
    public static final void j(@Nullable DownloadTask downloadTask) {
        f34739a.k(downloadTask);
    }

    @JvmStatic
    @JvmOverloads
    public static final void k(@Nullable DownloadTask downloadTask) {
        f34739a.l(downloadTask);
    }

    @JvmStatic
    private static final void k0(Context context, DownloadTask downloadTask) {
        f34739a.a0(context, downloadTask);
    }

    @JvmStatic
    @JvmOverloads
    public static final void l(@Nullable DownloadTask downloadTask, long j10) {
        f34739a.m(downloadTask, j10);
    }

    @JvmStatic
    public static final void l0(@Nullable Activity activity) {
        f34739a.b0(activity);
    }

    @JvmStatic
    public static final int m() {
        return f34739a.o();
    }

    @JvmStatic
    public static final void m0(@NotNull DownloadTask downloadTask) {
        f34739a.f0(downloadTask);
    }

    @JvmStatic
    public static final boolean n0(@Nullable DownloadTask downloadTask, @NotNull String str) {
        return f34739a.g0(downloadTask, str);
    }

    private final void p0(Context context, StartGameMeta startGameMeta, boolean z10, Intent intent) {
        startGameMeta.setUserID(AccountUtil_.getInstance_(context).getUid());
        startGameMeta.setPa_package_name(context.getPackageName());
        startGameMeta.setTourist(AccountUtil_.getInstance_(context).isTourist());
        h1.e("GameMeta:", JsonMapper.getInstance().toJson(startGameMeta));
        String str = MApplication.N;
        if (str == null || str.length() == 0) {
            startGameMeta.setDnsJson(context.getSharedPreferences("Papa_Stat_SharedPreferences", 4).getString("DNSHttpUrl", ""));
        } else {
            startGameMeta.setDnsJson(MApplication.N);
        }
        if (intent != null) {
            intent.putExtra("jsonData", JsonMapper.getInstance().toJson(startGameMeta));
            if (z10 || startGameMeta.getTagId() != ConstantIntEnum.NDS.value()) {
                return;
            }
            intent.putExtra("GAMEPATH", startGameMeta.getRomPath() + ".nds");
        }
    }

    @JvmStatic
    @Nullable
    public static final String q(@NotNull Context context, @NotNull String str) {
        return f34739a.p(context, str);
    }

    static /* synthetic */ void q0(APKUtils aPKUtils, Context context, StartGameMeta startGameMeta, boolean z10, Intent intent, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: wrapGameMeta");
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        if ((i10 & 8) != 0) {
            intent = null;
        }
        aPKUtils.p0(context, startGameMeta, z10, intent);
    }

    @JvmStatic
    public static final void r0(@NotNull File file, @NotNull String str, @NotNull String str2, @NotNull Function1<? super String, Unit> function1) {
        f34739a.i0(file, str, str2, function1);
    }

    @JvmStatic
    public static final void s0(@Nullable String str, @Nullable DownloadTask downloadTask, @NotNull Function1<? super String, Unit> function1) {
        f34739a.j0(str, downloadTask, function1);
    }

    private final Class<?>[] t(Class<?> cls, String str) {
        Class<?>[] parameterTypes = (Class[]) new ArrayList().toArray(new Class[0]);
        Method[] methods = cls.getMethods();
        int length = methods.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (Intrinsics.areEqual(methods[i10].getName(), str)) {
                parameterTypes = methods[i10].getParameterTypes();
            }
        }
        return parameterTypes;
    }

    @JvmStatic
    public static final void v(@NotNull Context context, @NotNull EMUApkTable eMUApkTable, @Nullable DownloadTask downloadTask) {
        f34739a.r(context, eMUApkTable, downloadTask);
    }

    @JvmStatic
    public static final void w(@NotNull Context context, @NotNull DownloadTask downloadTask) {
        f34739a.t(context, downloadTask);
    }

    @JvmStatic
    public static final void x(@NotNull Context context) {
        f34739a.u(context);
    }

    public final void A(@Nullable Context context, @Nullable String str) {
        String str2 = Build.BRAND;
        DownloadTask downloadTaskF = q5.f.M().F(str);
        if (downloadTaskF == null || !(Intrinsics.areEqual("MOD", downloadTaskF.getFileType()) || f34739a.H(downloadTaskF))) {
            z(context, new File(str));
            return;
        }
        if (!(MApplication.f3182z.getActivity() instanceof ModGameIndexActivity)) {
            new PrefDef_(context).lastInstallApp().g(downloadTaskF.getCrc_link_type_val());
        }
        f34739a.v(context, downloadTaskF);
    }

    public final void B(@Nullable Context context, @Nullable File file) {
        C(context, file);
    }

    public final void C(@Nullable final Context context, @Nullable final File file) {
        MApplication.f3182z.O(true);
        if (file == null || !file.exists()) {
            return;
        }
        g1.c(" permissxx   installApk4");
        if (context != null) {
            PackageInstallWatch.e().l(context, file);
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 24) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.setDataAndType(Uri.fromFile(file), AdBaseConstants.MIME_APK);
            try {
                Intrinsics.checkNotNull(context);
                context.startActivity(intent);
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.addFlags(C.ENCODING_PCM_MU_LAW);
        if (i10 >= 24) {
            intent2.setFlags(1);
            if (context == null) {
                Intrinsics.checkNotNull(context);
                throw new KotlinNothingValueException();
            }
            Uri uriForFile = FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file);
            Intrinsics.checkNotNullExpressionValue(uriForFile, "getUriForFile(...)");
            intent2.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
        } else {
            intent2.setDataAndType(Uri.fromFile(file), AdBaseConstants.MIME_APK);
        }
        try {
            if (!(context instanceof Activity)) {
                intent2.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            if (context instanceof Activity) {
                ((Activity) context).startActivityForResult(intent2, 1);
            } else {
                Intrinsics.checkNotNull(context);
                context.startActivity(intent2);
            }
            new Handler().postDelayed(new Runnable() { // from class: com.join.android.app.common.utils.a
                @Override // java.lang.Runnable
                public final void run() {
                    APKUtils.D(this.f34752b, context, file);
                }
            }, 500L);
        } catch (Exception e11) {
            e11.printStackTrace();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void E(@Nullable File file) {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Class<?>[] clsArrT = t(cls, "getPackageManager");
            Object objInvoke = cls.getMethod("getPackageManager", (Class[]) Arrays.copyOf(clsArrT, clsArrT.length)).invoke(cls, new Object[0]);
            Class<?> cls2 = objInvoke.getClass();
            Class<?>[] clsArrT2 = t(cls2, "installPackage");
            cls2.getMethod("installPackage", (Class[]) Arrays.copyOf(clsArrT2, clsArrT2.length)).invoke(objInvoke, Uri.fromFile(file), null, 0, null);
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
        } catch (IllegalArgumentException e12) {
            e12.printStackTrace();
        } catch (NoSuchMethodException e13) {
            e13.printStackTrace();
        } catch (InvocationTargetException e14) {
            e14.printStackTrace();
        }
    }

    public final boolean N(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return com.join.mgps.va.overmind.i.M(com.join.mgps.va.overmind.i.f73262g.d(), d2.f49544b, 0, 2, null);
    }

    @JvmOverloads
    public final void R(@Nullable Context context, @NotNull StartGameMeta startGameMeta) {
        Intrinsics.checkNotNullParameter(startGameMeta, "startGameMeta");
        W(this, context, startGameMeta, false, null, 12, null);
    }

    @JvmOverloads
    public final void S(@Nullable Context context, @NotNull StartGameMeta startGameMeta, boolean z10) {
        Intrinsics.checkNotNullParameter(startGameMeta, "startGameMeta");
        W(this, context, startGameMeta, z10, null, 8, null);
    }

    @JvmOverloads
    public void T(@Nullable Context context, @NotNull StartGameMeta startGameMeta, boolean z10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(startGameMeta, "startGameMeta");
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            if (z10) {
                intent.setFlags(8388608);
            } else {
                intent.setFlags(268566528);
            }
            String packageName = startGameMeta.getPackageName();
            if (str == null) {
                str = startGameMeta.getActivityName();
            }
            intent.setComponent(new ComponentName(packageName, str));
            if (context != null) {
                p0(context, startGameMeta, z10, intent);
            }
            ContextCompat.startActivity(context == null ? MApplication.f3182z : context, intent, null);
            MApplication.f3182z.O(true);
        } catch (Exception e10) {
            e10.printStackTrace();
            if (startGameMeta.getTagId() == ConstantIntEnum.PS2.value()) {
                if ((e10 instanceof ClassNotFoundException) || (e10 instanceof ActivityNotFoundException)) {
                    UtilsMy.e4(context);
                }
            }
        }
    }

    public final void U(@NotNull Context context, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            PackageManager packageManager = context.getPackageManager();
            Intrinsics.checkNotNull(str);
            context.startActivity(packageManager.getLaunchIntentForPackage(str));
            MApplication.f3182z.O(true);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void V(@NotNull Context context, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intent intent = new Intent();
        intent.addFlags(8388608);
        intent.setFlags(270532608);
        Intrinsics.checkNotNull(str);
        Intrinsics.checkNotNull(str2);
        intent.setComponent(new ComponentName(str, str2));
        intent.setAction("android.intent.action.VIEW");
        context.startActivity(intent);
        MApplication.f3182z.O(true);
    }

    public final void Y(@NotNull Context context, @NotNull StartGameMeta startGameMeta) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(startGameMeta, "startGameMeta");
        W(this, context, startGameMeta, true, null, 8, null);
    }

    @JvmOverloads
    public final boolean e(@NotNull Context context, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        return g(this, context, str, null, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0083  */
    /* JADX WARN: Code duplicated, block: B:30:0x0090  */
    /* JADX WARN: Code duplicated, block: B:31:0x0092  */
    /* JADX WARN: Code duplicated, block: B:33:0x009e  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:9:0x003d  */
    @JvmOverloads
    public final boolean f(@NotNull Context context, @Nullable String str, @NotNull DEVICE_TYPE type) {
        boolean zM;
        ActivityInfo[] activityInfoArr;
        boolean z10;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(type, "type");
        if (type.getMType() == DEVICE_TYPE.VM.getMType() || type.getMType() == DEVICE_TYPE.ALL.getMType()) {
            com.join.mgps.va.overmind.i.a aVar = com.join.mgps.va.overmind.i.f73262g;
            if (aVar.d().S()) {
                com.join.mgps.va.overmind.i iVarD = aVar.d();
                Intrinsics.checkNotNull(str);
                zM = com.join.mgps.va.overmind.i.M(iVarD, str, 0, 2, null);
            } else {
                zM = false;
            }
        } else {
            zM = false;
        }
        if (type.getMType() == DEVICE_TYPE.REAL.getMType() || type.getMType() == DEVICE_TYPE.ALL.getMType()) {
            PackageManager packageManager = context.getPackageManager();
            try {
                try {
                    PackageManager packageManager2 = context.getPackageManager();
                    Intrinsics.checkNotNull(str);
                    Intrinsics.checkNotNullExpressionValue(packageManager2.getApplicationInfo(str, 8192), "getApplicationInfo(...)");
                } catch (PackageManager.NameNotFoundException unused) {
                    z10 = false;
                }
            } catch (PackageManager.NameNotFoundException unused2) {
                Intrinsics.checkNotNull(str);
                PackageInfo packageInfo = packageManager.getPackageInfo(str, 1);
                if (((packageInfo == null || (activityInfoArr = packageInfo.activities) == null) ? 0 : activityInfoArr.length) <= 0) {
                    z10 = false;
                }
                if (type.getMType() == DEVICE_TYPE.VM.getMType()) {
                    return zM;
                }
                if (type.getMType() == DEVICE_TYPE.REAL.getMType()) {
                    return z10;
                }
                if (z10) {
                }
            }
            z10 = true;
        } else {
            z10 = false;
        }
        if (type.getMType() == DEVICE_TYPE.VM.getMType()) {
            return zM;
        }
        if (type.getMType() == DEVICE_TYPE.REAL.getMType()) {
            return z10;
        }
        return !z10 || zM;
    }

    public final boolean i(@NotNull Context context, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            AssetManager assets = context.getAssets();
            Intrinsics.checkNotNull(str);
            InputStream inputStreamOpen = assets.open(str);
            Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "open(...)");
            File file = new File(str2);
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int i10 = inputStreamOpen.read(bArr);
                if (i10 <= 0) {
                    fileOutputStream.close();
                    inputStreamOpen.close();
                    return true;
                }
                fileOutputStream.write(bArr, 0, i10);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public final void j0(@Nullable byte[] bArr) {
        try {
            Certificate certificateGenerateCertificate = CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr));
            Intrinsics.checkNotNull(certificateGenerateCertificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            X509Certificate x509Certificate = (X509Certificate) certificateGenerateCertificate;
            String string = x509Certificate.getPublicKey().toString();
            String string2 = x509Certificate.getSerialNumber().toString();
            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            System.out.println((Object) ("signName:" + x509Certificate.getSigAlgName()));
            System.out.println((Object) ("pubKey:" + string));
            System.out.println((Object) ("signNumber:" + string2));
            System.out.println((Object) ("subjectDN:" + x509Certificate.getSubjectDN()));
        } catch (CertificateException e10) {
            e10.printStackTrace();
        }
    }

    @NotNull
    public final a n(@NotNull Context ctx, @NotNull String pak) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(pak, "pak");
        return o(ctx, pak, DEVICE_TYPE.REAL);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:46:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f2  */
    @NotNull
    public final a o(@NotNull Context ctx, @NotNull String pkg, @NotNull DEVICE_TYPE type) {
        String str;
        PackageInfo packageInfo;
        com.join.mgps.va.overmind.i.a aVar;
        d7.a aVarW;
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(pkg, "pkg");
        Intrinsics.checkNotNullParameter(type, "type");
        int length = pkg.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) pkg.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String string = pkg.subSequence(i10, length + 1).toString();
        a aVar2 = new a();
        if (type.getMType() == DEVICE_TYPE.REAL.getMType() || type.getMType() == DEVICE_TYPE.ALL.getMType()) {
            PackageManager packageManager = ctx.getPackageManager();
            try {
                if (g(this, ctx, string, null, 4, null) && (packageInfo = packageManager.getPackageInfo(string, 1)) != null) {
                    String str2 = packageInfo.versionName;
                    int i11 = packageInfo.versionCode;
                    ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                    String strValueOf = String.valueOf(applicationInfo != null ? applicationInfo.loadLabel(ctx.getPackageManager()) : null);
                    str = packageInfo.packageName;
                    try {
                        aVar2.i(i11);
                        aVar2.j(str2);
                        aVar2.f(strValueOf);
                        aVar2.h(str);
                        aVar2.g(null);
                        return aVar2;
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                        if (type.getMType() != DEVICE_TYPE.VM.getMType()) {
                            aVar = com.join.mgps.va.overmind.i.f73262g;
                            if (aVar.d().S()) {
                                aVar2.i(aVarW.f90718k);
                                aVar2.j(aVarW.f90719l);
                                CharSequence charSequence = aVarW.f90712e;
                                aVar2.f(charSequence != null ? charSequence.toString() : null);
                                aVar2.h(str);
                                aVar2.g(aVarW.f90711d);
                            }
                        } else {
                            aVar = com.join.mgps.va.overmind.i.f73262g;
                            if (aVar.d().S()) {
                                aVar2.i(aVarW.f90718k);
                                aVar2.j(aVarW.f90719l);
                                CharSequence charSequence2 = aVarW.f90712e;
                                aVar2.f(charSequence2 != null ? charSequence2.toString() : null);
                                aVar2.h(str);
                                aVar2.g(aVarW.f90711d);
                            }
                        }
                        return aVar2;
                    }
                }
                str = string;
            } catch (Exception e11) {
                e = e11;
                str = string;
            }
        } else {
            str = string;
        }
        if (type.getMType() != DEVICE_TYPE.VM.getMType() || type.getMType() == DEVICE_TYPE.ALL.getMType()) {
            aVar = com.join.mgps.va.overmind.i.f73262g;
            if (aVar.d().S() && com.join.mgps.va.overmind.i.M(aVar.d(), string, 0, 2, null) && (aVarW = com.join.mgps.va.overmind.i.w(aVar.d(), string, 0, 2, null)) != null) {
                aVar2.i(aVarW.f90718k);
                aVar2.j(aVarW.f90719l);
                CharSequence charSequence3 = aVarW.f90712e;
                aVar2.f(charSequence3 != null ? charSequence3.toString() : null);
                aVar2.h(str);
                aVar2.g(aVarW.f90711d);
            }
        }
        return aVar2;
    }

    public final void o0(@NotNull Context context, @NotNull String pak) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pak, "pak");
        context.startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + pak)));
    }

    @NotNull
    public final List<a> p(@NotNull Context ctx) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        ArrayList arrayList = new ArrayList();
        try {
            PackageManager packageManager = ctx.getPackageManager();
            List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
            Intrinsics.checkNotNullExpressionValue(installedPackages, "getInstalledPackages(...)");
            int size = installedPackages.size();
            for (int i10 = 0; i10 < size; i10++) {
                try {
                    PackageInfo packageInfo = installedPackages.get(i10);
                    try {
                        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                        int i11 = applicationInfo != null ? applicationInfo.flags : 0;
                        if (!(((i11 & 1) != 0) | ((i11 & 128) != 0))) {
                            a aVar = new a();
                            ApplicationInfo applicationInfo2 = packageInfo.applicationInfo;
                            if (applicationInfo2 != null) {
                                aVar.f(packageManager.getApplicationLabel(applicationInfo2).toString());
                            }
                            aVar.h(packageInfo.packageName);
                            aVar.j(packageInfo.versionName);
                            aVar.i(packageInfo.versionCode);
                            aVar.g(null);
                            arrayList.add(aVar);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        return arrayList;
    }

    @NotNull
    public final List<a> r(@NotNull Context ctx) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        ArrayList arrayList = new ArrayList();
        try {
            PackageManager packageManager = ctx.getPackageManager();
            List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
            Intrinsics.checkNotNullExpressionValue(installedPackages, "getInstalledPackages(...)");
            int size = installedPackages.size();
            for (int i10 = 0; i10 < size; i10++) {
                try {
                    PackageInfo packageInfo = installedPackages.get(i10);
                    try {
                        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                        int i11 = applicationInfo != null ? applicationInfo.flags : 0;
                        boolean z10 = true;
                        boolean z11 = (i11 & 1) != 0;
                        if ((i11 & 128) == 0) {
                            z10 = false;
                        }
                        if (z11 | z10) {
                            a aVar = new a();
                            ApplicationInfo applicationInfo2 = packageInfo.applicationInfo;
                            if (applicationInfo2 != null) {
                                aVar.f(packageManager.getApplicationLabel(applicationInfo2).toString());
                            }
                            aVar.h(packageInfo.packageName);
                            aVar.j(packageInfo.versionName);
                            aVar.i(packageInfo.versionCode);
                            aVar.g(null);
                            arrayList.add(aVar);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        return arrayList;
    }

    @Nullable
    public final String s(@NotNull Context context, @Nullable String str) {
        PackageInfo packageArchiveInfo;
        ApplicationInfo applicationInfo;
        String str2;
        Intrinsics.checkNotNullParameter(context, "context");
        return (str == null || (packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 1)) == null || (applicationInfo = packageArchiveInfo.applicationInfo) == null || (str2 = applicationInfo.packageName) == null) ? "" : str2;
    }

    @NotNull
    public final a u(@NotNull Context ctx, @NotNull File apkFile) {
        String str;
        String str2;
        Drawable applicationIcon;
        String str3;
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(apkFile, "apkFile");
        a aVar = new a();
        PackageManager packageManager = ctx.getPackageManager();
        PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(apkFile.getAbsolutePath(), 1);
        String string = null;
        if (packageArchiveInfo != null) {
            String str4 = packageArchiveInfo.versionName;
            ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
            if (applicationInfo != null) {
                applicationIcon = packageManager.getApplicationIcon(applicationInfo);
                CharSequence applicationLabel = packageManager.getApplicationLabel(applicationInfo);
                string = applicationLabel != null ? applicationLabel.toString() : null;
                str3 = applicationInfo.packageName;
            } else {
                str3 = null;
                applicationIcon = null;
            }
            str2 = str3;
            str = string;
            string = str4;
        } else {
            str = null;
            str2 = null;
            applicationIcon = null;
        }
        aVar.j(string);
        aVar.f(str);
        aVar.h(str2);
        aVar.g(applicationIcon);
        return aVar;
    }

    public final void y(@NotNull Context context, @Nullable Uri uri) {
        DownloadTask downloadTaskG;
        Intrinsics.checkNotNullParameter(context, "context");
        UtilsMy.e3(context, "android.permission.REQUEST_INSTALL_PACKAGES");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setFlags(1);
            intent.setDataAndType(uri, AdBaseConstants.MIME_APK);
        } else {
            intent.setDataAndType(uri, AdBaseConstants.MIME_APK);
        }
        try {
            String strD = new PrefDef_(context).lastInstallApp().d();
            if (!TextUtils.isEmpty(strD) && (downloadTaskG = q5.f.M().G(strD)) != null && !TextUtils.isEmpty(downloadTaskG.getPackageName())) {
                PackageInstallWatch.e().k(context, downloadTaskG.getPackageName());
            }
            context.startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void z(@Nullable Context context, @Nullable File file) {
        if (context == null || file == null || !file.exists()) {
            return;
        }
        if (Build.VERSION.SDK_INT < 26) {
            B(context, file);
        } else if (context.getPackageManager().canRequestPackageInstalls()) {
            B(context, file);
        } else {
            UtilsMy.f3(context, "android.permission.REQUEST_INSTALL_PACKAGES", file.getAbsolutePath());
        }
    }
}
