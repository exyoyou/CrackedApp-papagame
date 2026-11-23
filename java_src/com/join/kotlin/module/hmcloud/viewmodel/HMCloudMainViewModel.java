package com.join.kotlin.module.hmcloud.viewmodel;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SafeLiveData;
import androidx.lifecycle.ViewModelKt;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.beans.HMInputOpData;
import com.haima.hmcp.beans.ResolutionInfo;
import com.haima.hmcp.proto.GSSDK;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.module.hmcloud.bean.GuideState;
import com.join.kotlin.module.hmcloud.device.HMInputDeviceManager;
import com.join.kotlin.module.hmcloud.pad.HMDpadDirection;
import com.join.kotlin.module.hmcloud.pad.HMKeyData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.k2;
import com.join.mgps.Util.w0;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.hmcloud.CloudGamingCfgInfo;
import com.join.mgps.dto.hmcloud.ControllerTemplate;
import com.join.mgps.dto.hmcloud.GameButtonTips;
import com.join.mgps.dto.hmcloud.HMCommonConfig;
import com.join.mgps.dto.hmcloud.HMKeyItem;
import com.join.mgps.dto.hmcloud.HMMenuAction;
import com.join.mgps.dto.hmcloud.HMOpConfig;
import com.join.mgps.dto.hmcloud.HandleCfg;
import com.join.mgps.dto.hmcloud.HandleCfgSource;
import com.join.mgps.dto.hmcloud.HandleType;
import com.join.mgps.dto.hmcloud.PictureSetting;
import com.join.mgps.dto.hmcloud.RequestGameCfgInfoArgs;
import com.kuaishou.weapon.p0.t;
import com.papa.controller.core.BaseEvent;
import com.papa.controller.core.ControllerManager;
import com.papa.controller.core.PadKeyEvent;
import com.papa.controller.core.PadMotionEvent;
import com.tencent.cos.common.COSHttpResponseKey;
import com.umeng.analytics.pro.bm;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.UserInfo;
import dagger.hilt.android.lifecycle.HiltViewModel;
import dagger.hilt.android.qualifiers.ApplicationContext;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@HiltViewModel
@Metadata(d1 = {"\u0000¨\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u000e\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\"\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0013\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0007\u0010\u0081\u0001\u001a\u00020\u0011J\u0013\u0010\u0082\u0001\u001a\u00030\u0083\u00012\t\b\u0002\u0010\u0084\u0001\u001a\u00020\u0011J\t\u0010\u0085\u0001\u001a\u0004\u0018\u00010NJ\u0012\u0010\u0086\u0001\u001a\u00030\u0083\u00012\b\u0010\u0087\u0001\u001a\u00030\u0088\u0001J\b\u0010\u0089\u0001\u001a\u00030\u0083\u0001J\b\u0010\u008a\u0001\u001a\u00030\u0083\u0001J\u0013\u0010\u008b\u0001\u001a\u00020\u00112\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0088\u0001J\b\u0010\u008d\u0001\u001a\u00030\u0083\u0001J\b\u0010\u008e\u0001\u001a\u00030\u0083\u0001J\u0011\u0010\u008f\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u0090\u0001\u001a\u00020\u000eJ\u0007\u0010\u0091\u0001\u001a\u00020\u0011J\b\u0010\u0092\u0001\u001a\u00030\u0083\u0001J$\u0010\u0093\u0001\u001a\u00030\u0083\u0001\"\n\b\u0000\u0010\u0094\u0001*\u00030\u0095\u00012\b\u0010\u0096\u0001\u001a\u0003H\u0094\u0001¢\u0006\u0003\u0010\u0097\u0001J\b\u0010\u0098\u0001\u001a\u00030\u0083\u0001J\u0012\u0010\u0099\u0001\u001a\u00020\u00112\t\u0010\u009a\u0001\u001a\u0004\u0018\u00010\nJ\b\u0010\u009b\u0001\u001a\u00030\u0083\u0001J\u0010\u0010\u009c\u0001\u001a\u00030\u0083\u00012\u0006\u0010\u0002\u001a\u00020\u0003J&\u0010\u009d\u0001\u001a\u00030\u0083\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010E\u001a\u00020\n2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\nJ\u001e\u0010\u009e\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u009f\u0001\u001a\u00020\n2\u000b\b\u0002\u0010 \u0001\u001a\u0004\u0018\u00010\nJ\u0013\u0010¡\u0001\u001a\u00030\u0083\u00012\t\u0010¢\u0001\u001a\u0004\u0018\u00010\nJ\u0012\u0010£\u0001\u001a\u0004\u0018\u00010\u00172\u0007\u0010\u009f\u0001\u001a\u00020\nJ\u0011\u0010¤\u0001\u001a\u00030\u0083\u00012\u0007\u0010¥\u0001\u001a\u00020\u000eJ<\u0010¦\u0001\u001a\u00030\u0083\u00012\u0007\u0010§\u0001\u001a\u00020 2)\u0010¨\u0001\u001a$\u0012\u0018\u0012\u0016\u0018\u00010T¢\u0006\u000f\bª\u0001\u0012\n\b \u0001\u0012\u0005\b\b(«\u0001\u0012\u0005\u0012\u00030\u0083\u00010©\u0001J\u0011\u0010¬\u0001\u001a\u00030\u0083\u00012\u0007\u0010§\u0001\u001a\u00020 J\u0011\u0010\u00ad\u0001\u001a\u00030\u0083\u00012\u0007\u0010§\u0001\u001a\u00020 J\u0014\u0010»\u0001\u001a\u00030\u0083\u00012\b\u0010¼\u0001\u001a\u00030¸\u0001H\u0002J\u0014\u0010½\u0001\u001a\u00030\u0083\u00012\b\u0010¼\u0001\u001a\u00030¸\u0001H\u0002J \u0010¾\u0001\u001a\u00030\u0083\u00012\u0016\u0010¨\u0001\u001a\u0011\u0012\u0005\u0012\u00030¸\u0001\u0012\u0005\u0012\u00030\u0083\u00010©\u0001J\u001c\u0010¿\u0001\u001a\u00030\u0083\u00012\u0007\u0010À\u0001\u001a\u00020\n2\u0007\u0010Á\u0001\u001a\u00020\u0011H\u0002J\n\u0010Â\u0001\u001a\u00030\u0083\u0001H\u0002J!\u0010Ã\u0001\u001a\u00030\u0083\u00012\u0007\u0010 \u0001\u001a\u00020\n2\u000e\u0010Ä\u0001\u001a\t\u0012\u0005\u0012\u00030°\u00010\u001aJ1\u0010Å\u0001\u001a\u00030\u0083\u00012\u0015\u0010Æ\u0001\u001a\u0010\u0012\u0005\u0012\u00030°\u0001\u0012\u0004\u0012\u00020\n0²\u00012\u000e\u0010Ä\u0001\u001a\t\u0012\u0005\u0012\u00030°\u00010\u001aH\u0002J\n\u0010Ç\u0001\u001a\u00030\u0083\u0001H\u0002J#\u0010Ê\u0001\u001a\n\u0012\u0005\u0012\u00030°\u00010É\u00012\u0007\u0010Ë\u0001\u001a\u00020'2\u0007\u0010Ì\u0001\u001a\u00020'H\u0002J&\u0010Í\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0h2\u000f\u0010Ä\u0001\u001a\n\u0012\u0005\u0012\u00030°\u00010É\u0001H\u0002J#\u0010Î\u0001\u001a\u00030\u0083\u00012\u0007\u0010À\u0001\u001a\u00020\n2\u0007\u0010Ë\u0001\u001a\u00020'2\u0007\u0010Ì\u0001\u001a\u00020'J\u001a\u0010Ï\u0001\u001a\u00030\u0083\u00012\u0007\u0010À\u0001\u001a\u00020\n2\u0007\u0010Á\u0001\u001a\u00020\u0011J\u0011\u0010Ð\u0001\u001a\u00030\u0083\u00012\u0007\u0010Ñ\u0001\u001a\u00020\nJ\u0086\u0001\u0010Ò\u0001\u001a\u00030\u0083\u00012\t\u0010Ñ\u0001\u001a\u0004\u0018\u00010\n2o\u0010¨\u0001\u001aj\u0012\u0016\u0012\u00140\u000e¢\u0006\u000f\bª\u0001\u0012\n\b \u0001\u0012\u0005\b\b(Ô\u0001\u0012\u0016\u0012\u00140\u000e¢\u0006\u000f\bª\u0001\u0012\n\b \u0001\u0012\u0005\b\b(Õ\u0001\u0012\u0016\u0012\u00140\u000e¢\u0006\u000f\bª\u0001\u0012\n\b \u0001\u0012\u0005\b\b(Ö\u0001\u0012\u0016\u0012\u00140\u000e¢\u0006\u000f\bª\u0001\u0012\n\b \u0001\u0012\u0005\b\b(×\u0001\u0012\u0005\u0012\u00030\u0083\u00010Ó\u0001H\u0002J\u0017\u0010Ø\u0001\u001a\u00030\u0083\u00012\r\u0010Ù\u0001\u001a\b\u0012\u0004\u0012\u00020\n0\u001aJ\b\u0010Ú\u0001\u001a\u00030\u0083\u0001J\u0010\u0010Û\u0001\u001a\u00020\u00112\u0007\u0010Ü\u0001\u001a\u00020 J\u0014\u0010Ý\u0001\u001a\u00020\n2\t\u0010Þ\u0001\u001a\u0004\u0018\u00010\nH\u0002J\u0013\u0010ß\u0001\u001a\u00030\u0083\u00012\t\u0010§\u0001\u001a\u0004\u0018\u00010 J0\u0010à\u0001\u001a\u00030\u0083\u00012\u0007\u0010§\u0001\u001a\u00020 2\u001b\b\u0002\u0010á\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010T\u0012\u0005\u0012\u00030\u0083\u0001\u0018\u00010©\u0001H\u0002J\r\u0010ã\u0001\u001a\b\u0012\u0004\u0012\u00020T0\u001aJG\u0010ä\u0001\u001a\u00030\u0083\u00012\u0007\u0010 \u0001\u001a\u00020\n2\u0007\u0010å\u0001\u001a\u00020\u000e2\u000b\b\u0002\u0010æ\u0001\u001a\u0004\u0018\u00010\n2\u000b\b\u0002\u0010ç\u0001\u001a\u0004\u0018\u00010\u000e2\u000b\b\u0002\u0010è\u0001\u001a\u0004\u0018\u00010\u000e¢\u0006\u0003\u0010é\u0001J\u0013\u0010ê\u0001\u001a\u00030\u0083\u00012\t\u0010§\u0001\u001a\u0004\u0018\u00010 J,\u0010ë\u0001\u001a\u00030\u0083\u00012\t\u0010§\u0001\u001a\u0004\u0018\u00010 2\u0017\b\u0002\u0010ì\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0005\u0012\u00030\u0083\u00010©\u0001J\u001a\u0010í\u0001\u001a\u00030\u0083\u00012\u0007\u0010ç\u0001\u001a\u00020\u000e2\u0007\u0010è\u0001\u001a\u00020\u000eJ\b\u0010î\u0001\u001a\u00030\u0083\u0001J\u0013\u0010ï\u0001\u001a\u00030\u0083\u00012\u0007\u0010ð\u0001\u001a\u00020TH\u0002J\u0013\u0010ñ\u0001\u001a\u00030\u0083\u00012\u0007\u0010ð\u0001\u001a\u00020TH\u0002J\b\u0010ò\u0001\u001a\u00030\u0083\u0001J\t\u0010ó\u0001\u001a\u00020\nH\u0002J\b\u0010ô\u0001\u001a\u00030\u0083\u0001J\b\u0010õ\u0001\u001a\u00030\u0083\u0001J\u0007\u0010ö\u0001\u001a\u00020\u0011J\u0007\u0010÷\u0001\u001a\u00020\nJ\u0007\u0010ø\u0001\u001a\u000206J\u0010\u0010ù\u0001\u001a\u00020\n2\u0007\u0010ú\u0001\u001a\u000206J\u0010\u0010û\u0001\u001a\u00020\n2\u0007\u0010ú\u0001\u001a\u000206J\u001a\u0010û\u0001\u001a\u00030ü\u00012\u0007\u0010ú\u0001\u001a\u0002062\u0007\u0010ý\u0001\u001a\u00020\u0011J\b\u0010þ\u0001\u001a\u00030\u0083\u0001J\t\u0010ÿ\u0001\u001a\u0004\u0018\u00010YR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\fR\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\fR\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00110\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\fR\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\t¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\fR\u001d\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u001a0\t¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\fR\u001d\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001a0\t¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\fR\u0019\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\t¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\fR\u001d\u0010\"\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0\u001a0\t¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\fR\u001d\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0\u001a0\t¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\fR\u0017\u0010&\u001a\b\u0012\u0004\u0012\u00020'0\t¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\fR\u0017\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00110\t¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\fR\u0017\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00110\t¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\fR\u0017\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00110\t¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\fR\u0017\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00110\t¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\fR\u0019\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\t¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\fR\u0017\u00103\u001a\b\u0012\u0004\u0012\u00020'0\t¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\fR\u0017\u00105\u001a\b\u0012\u0004\u0012\u0002060\t¢\u0006\b\n\u0000\u001a\u0004\b7\u0010\fR\u0017\u00108\u001a\b\u0012\u0004\u0012\u0002060\t¢\u0006\b\n\u0000\u001a\u0004\b9\u0010\fR\u0017\u0010:\u001a\b\u0012\u0004\u0012\u0002060\t¢\u0006\b\n\u0000\u001a\u0004\b;\u0010\fR\u0019\u0010<\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010=0\t¢\u0006\b\n\u0000\u001a\u0004\b>\u0010\fR\u0017\u0010?\u001a\b\u0012\u0004\u0012\u00020@0\t¢\u0006\b\n\u0000\u001a\u0004\bA\u0010\fR\u0017\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00110\t¢\u0006\b\n\u0000\u001a\u0004\bB\u0010\fR\u0017\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00110\t¢\u0006\b\n\u0000\u001a\u0004\bD\u0010\fR\u001a\u0010E\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u001a\u0010J\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010G\"\u0004\bL\u0010IR\u0010\u0010M\u001a\u0004\u0018\u00010NX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010O\u001a\u0004\u0018\u00010PX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010Q\u001a\u0004\u0018\u00010RX\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010S\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010T0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bU\u0010\f\"\u0004\bV\u0010WR&\u0010X\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Y0\u001a0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u0010\f\"\u0004\b[\u0010WR\"\u0010\\\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010T0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010\f\"\u0004\b^\u0010WR&\u0010_\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Y0`0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\ba\u0010\f\"\u0004\bb\u0010WR\u0014\u0010c\u001a\b\u0012\u0004\u0012\u00020T0`X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010d\u001a\u00020\u000eX\u0086D¢\u0006\b\n\u0000\u001a\u0004\be\u0010fR\u001a\u0010g\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0hX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010i\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R \u0010j\u001a\b\u0012\u0004\u0012\u00020\u00110\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bk\u0010\f\"\u0004\bl\u0010WR \u0010m\u001a\b\u0012\u0004\u0012\u00020n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bo\u0010\f\"\u0004\bp\u0010WR \u0010q\u001a\b\u0012\u0004\u0012\u00020\u000e0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\br\u0010\f\"\u0004\bs\u0010WR\"\u0010t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010u0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bv\u0010\f\"\u0004\bw\u0010WR\u0010\u0010x\u001a\u0004\u0018\u00010yX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010z\u001a\u00020{X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010|\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010~0}¢\u0006\t\n\u0000\u001a\u0005\b\u007f\u0010\u0080\u0001R\u001d\u0010®\u0001\u001a\u0010\u0012\u0005\u0012\u00030°\u0001\u0012\u0004\u0012\u00020\u000e0¯\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010±\u0001\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0005\u0012\u00030\u0088\u00010²\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010³\u0001\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0005\u0012\u00030´\u00010²\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010µ\u0001\u001a\u000f\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00110¯\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010¶\u0001\u001a\n\u0012\u0005\u0012\u00030¸\u00010·\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010¹\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00110¯\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010º\u0001\u001a\u001b\u0012\u0004\u0012\u00020\n\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0h0¯\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010È\u0001\u001a\u0017\u0012\u0004\u0012\u00020\n\u0012\f\u0012\n\u0012\u0005\u0012\u00030°\u00010É\u00010¯\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010â\u0001\u001a\u000f\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020T0¯\u0001X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0080\u0002"}, d2 = {"Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", com.papa.controller.component.bluetooth.spp.c.f76484o, "Landroidx/lifecycle/MutableLiveData;", "", "getToast", "()Landroidx/lifecycle/MutableLiveData;", "brightness", "", "getBrightness", com.sigmob.sdk.base.common.a.f78892z, "", "getMute", "gameRatio", "getGameRatio", "isLatencyOn", "currentResolution", "Lcom/haima/hmcp/beans/ResolutionInfo;", "getCurrentResolution", "resolutionList", "", "getResolutionList", "pictureSettingList", "Lcom/join/mgps/dto/hmcloud/PictureSetting;", "getPictureSettingList", "currentKeyType", "Lcom/join/mgps/dto/hmcloud/HandleCfg;", "getCurrentKeyType", "keyTypeList", "getKeyTypeList", "templateList", "getTemplateList", "keyAlpha", "", "getKeyAlpha", "keyVibrate", "getKeyVibrate", "keyHide", "getKeyHide", "pinchToZoom", "getPinchToZoom", "keyboardInput", "getKeyboardInput", Constants.COUNTLY_NAME_TOUCH_MODE, Constants.COUNTLY_NAME_GET_TOUCH_MODE, "mouseSensitivity", "getMouseSensitivity", "remainTime", "", "getRemainTime", "playTime", "getPlayTime", "startPlayTime", "getStartPlayTime", "playtimeSummary", "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;", "getPlaytimeSummary", "menuAction", "Lcom/join/mgps/dto/hmcloud/HMMenuAction;", "getMenuAction", "isHmCloudPc", "handleSupport", "getHandleSupport", "gameId", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "cid", "getCid", "setCid", "gameCfgInfo", "Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;", "gameClient", "Lcom/join/mgps/rpc/RpcGameClient;", "accountClientV2", "Lcom/join/mgps/rpc/RpcAccountClientV2;", "currentOpConfig", "Lcom/join/mgps/dto/hmcloud/HMOpConfig;", "getCurrentOpConfig", "setCurrentOpConfig", "(Landroidx/lifecycle/MutableLiveData;)V", "currentKeys", "Lcom/join/mgps/dto/hmcloud/HMKeyItem;", "getCurrentKeys", "setCurrentKeys", "editOpConfig", "getEditOpConfig", "setEditOpConfig", "editKeys", "", "getEditKeys", "setEditKeys", "customOpConfigList", "maxOpConfigSize", "getMaxOpConfigSize", "()I", "layoutSize", "Lkotlin/Pair;", "lastResolutionInfo", "showKeyTips", "getShowKeyTips", "setShowKeyTips", "guideState", "Lcom/join/kotlin/module/hmcloud/bean/GuideState;", "getGuideState", "setGuideState", "inputDeviceSize", "getInputDeviceSize", "setInputDeviceSize", "inputDevice", "Lcom/papa/controller/core/ControllerManager$ControllerDevice;", "getInputDevice", "setInputDevice", "inputDeviceManager", "Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;", "inputEventMapper", "Lcom/join/kotlin/module/hmcloud/viewmodel/InputEventMapper;", "inputEventData", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/papa/controller/core/BaseEvent;", "getInputEventData", "()Lkotlinx/coroutines/flow/MutableSharedFlow;", "useInputDevice", "guideNext", "", "done", "getCloudGamingCfgInfo", "performInputEvent", NotificationCompat.CATEGORY_EVENT, "", "startInputMonitor", "stopInputMonitor", "dispatchEvent", "obj", "startVibrate", "loadGameLocalConfig", "setTouchMode", "mode", "isKeyboardEnable", "requestPlaytimeSummary", "setRatio", "T", "Landroid/view/ViewGroup$LayoutParams;", "lp", "(Landroid/view/ViewGroup$LayoutParams;)V", "getGameCfgInfoBySrv", "isLowResolution", bm.f84423z, "updateResolutionInfo", "getScreenBrightness", "feedback", "onSwitchResolution", "id", "name", "onSwitchResolutionResult", "curId", "findResolutionById", "loadTemplate", "type", "loadTemplateKeys", com.umeng.ccg.a.f84982i, com.alipay.sdk.authjs.a.f7124i, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "config", "resetEdit", "loadEditKeys", "directionMap", "", "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;", "gamepadMap", "", "keyboardMap", "Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;", "opEventPool", "opInputChannel", "Lkotlinx/coroutines/channels/Channel;", "Lcom/haima/hmcp/beans/HMInputOpData;", "gamepadEventPool", "trackballAxis", "appendCurrentTrackballState", "data", "enqueueOpInput", "collectOpInputData", "performGamepadKeyClick", "key", "pressed", "invalidateGamepadEvent", "performDirection", "dirs", "applyDirectionKeys", "map", "emitKeyboardOpPool", "trackballLastDirs", "", "trackballDirections", "x", "y", "dirsToStickValue", "performTrackball", "performClick", "addKey", t.f74876a, "computeNewSize", "Lkotlin/Function4;", "newX", "newY", "newWidth", "newHeight", "addCombineKey", COSHttpResponseKey.Data.KEYS, "refreshKeyboardTypeList", "isAddKeyType", "item", "readJsonFromUrl", "url", "switchOpConfig", "loadOpConfig", "onResult", "cacheOpConfigMap", "getCustomOpConfig", "saveCustomOpConfig", "cfgType", "path", "width", "height", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "editCustomOpConfig", "deleteCustomOpConfig", "success", "setOpLayoutSize", "saveLastOpConfig", "fillOpConfig", "opConfig", "setOpConfig", "loadLastOpConfig", "getConfigRoot", "saveLastCommonConfig", "loadLastCommonConfig", "isCloudVip", "getLastResolutionId", "calcRemainTime", "formatRemainTime", "seconds", "formatSignTime", "Landroid/text/Spanned;", "isNewMember", "refreshKeys", "getGuideKeyPosition", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 6 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 7 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,1614:1\n1563#2:1615\n1634#2,3:1616\n1869#2:1619\n295#2,2:1620\n1870#2:1622\n295#2,2:1623\n295#2,2:1625\n295#2,2:1627\n1617#2,9:1629\n1869#2:1638\n1870#2:1640\n1626#2:1641\n1869#2,2:1642\n295#2,2:1648\n295#2,2:1701\n1#3:1639\n1#3:1651\n216#4,2:1644\n216#4,2:1646\n10#5:1650\n10#5:1700\n108#6:1652\n80#6,22:1653\n108#6:1675\n80#6,22:1676\n470#7:1698\n470#7:1699\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel\n*L\n345#1:1615\n345#1:1616,3\n363#1:1619\n365#1:1620,2\n363#1:1622\n432#1:1623,2\n436#1:1625,2\n449#1:1627,2\n639#1:1629,9\n639#1:1638\n639#1:1640\n639#1:1641\n712#1:1642,2\n920#1:1648,2\n1404#1:1701,2\n639#1:1639\n756#1:1644,2\n769#1:1646,2\n1151#1:1650\n1530#1:1700\n1448#1:1652\n1448#1:1653,22\n1463#1:1675\n1463#1:1676,22\n1475#1:1698\n1500#1:1699\n*E\n"})
public final class HMCloudMainViewModel extends BaseViewModel {

    @Nullable
    private com.join.mgps.rpc.c accountClientV2;

    @NotNull
    private final MutableLiveData<Integer> brightness;

    @NotNull
    private Map<String, HMOpConfig> cacheOpConfigMap;

    @NotNull
    private String cid;

    @NotNull
    private final Context context;

    @NotNull
    private final MutableLiveData<HandleCfg> currentKeyType;

    @NotNull
    private MutableLiveData<List<HMKeyItem>> currentKeys;

    @NotNull
    private MutableLiveData<HMOpConfig> currentOpConfig;

    @NotNull
    private final MutableLiveData<ResolutionInfo> currentResolution;

    @NotNull
    private List<HMOpConfig> customOpConfigList;

    @NotNull
    private final Map<HMDpadDirection, Integer> directionMap;

    @NotNull
    private MutableLiveData<List<HMKeyItem>> editKeys;

    @NotNull
    private MutableLiveData<HMOpConfig> editOpConfig;

    @Nullable
    private CloudGamingCfgInfo gameCfgInfo;

    @Nullable
    private com.join.mgps.rpc.k gameClient;

    @NotNull
    private String gameId;

    @NotNull
    private final MutableLiveData<String> gameRatio;

    @NotNull
    private final Map<Integer, Boolean> gamepadEventPool;

    @NotNull
    private final Map<String, Object> gamepadMap;

    @NotNull
    private MutableLiveData<GuideState> guideState;

    @NotNull
    private final MutableLiveData<Boolean> handleSupport;

    @NotNull
    private MutableLiveData<ControllerManager.c> inputDevice;

    @Nullable
    private HMInputDeviceManager inputDeviceManager;

    @NotNull
    private MutableLiveData<Integer> inputDeviceSize;

    @NotNull
    private final kotlinx.coroutines.flow.i<BaseEvent> inputEventData;

    @NotNull
    private InputEventMapper inputEventMapper;

    @NotNull
    private final MutableLiveData<Boolean> isHmCloudPc;

    @NotNull
    private final MutableLiveData<Boolean> isLatencyOn;

    @NotNull
    private final MutableLiveData<Float> keyAlpha;

    @NotNull
    private final MutableLiveData<Boolean> keyHide;

    @NotNull
    private final MutableLiveData<List<HandleCfg>> keyTypeList;

    @NotNull
    private final MutableLiveData<Boolean> keyVibrate;

    @NotNull
    private final MutableLiveData<Boolean> keyboardInput;

    @NotNull
    private final Map<String, HMInputOpData.HMOneInputOPData_InputOP> keyboardMap;

    @Nullable
    private ResolutionInfo lastResolutionInfo;

    @NotNull
    private Pair<Integer, Integer> layoutSize;
    private final int maxOpConfigSize;

    @NotNull
    private final MutableLiveData<HMMenuAction> menuAction;

    @NotNull
    private final MutableLiveData<Float> mouseSensitivity;

    @NotNull
    private final MutableLiveData<Boolean> mute;

    @NotNull
    private final Map<String, Boolean> opEventPool;

    @NotNull
    private final kotlinx.coroutines.channels.g<HMInputOpData> opInputChannel;

    @NotNull
    private final MutableLiveData<List<PictureSetting>> pictureSettingList;

    @NotNull
    private final MutableLiveData<Boolean> pinchToZoom;

    @NotNull
    private final MutableLiveData<Long> playTime;

    @NotNull
    private final MutableLiveData<MessageCloudGamingPlaytimeResponse.PlaytimeSummary> playtimeSummary;

    @NotNull
    private final MutableLiveData<Long> remainTime;

    @NotNull
    private final MutableLiveData<List<ResolutionInfo>> resolutionList;

    @NotNull
    private MutableLiveData<Boolean> showKeyTips;

    @NotNull
    private final MutableLiveData<Long> startPlayTime;

    @NotNull
    private final MutableLiveData<List<HandleCfg>> templateList;

    @NotNull
    private final MutableLiveData<String> toast;

    @NotNull
    private final MutableLiveData<Integer> touchMode;

    @NotNull
    private final Map<String, Pair<Integer, Integer>> trackballAxis;

    @NotNull
    private final Map<String, Set<HMDpadDirection>> trackballLastDirs;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HMKeyData.values().length];
            try {
                iArr[HMKeyData.JoyL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HMKeyData.JoyR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[HMKeyData.Dpad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[HMKeyData.JoyDpad.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[HMKeyData.JoyWasd.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[HMKeyData.JoyArrow.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[HMKeyData.BtnLT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[HMKeyData.BtnRT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[HMKeyData.BtnLB.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[HMKeyData.BtnRB.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$addCombineKey$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$addCombineKey$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$addCombineKey$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1614:1\n1869#2:1615\n295#2,2:1616\n1870#2:1618\n774#2:1619\n865#2,2:1620\n1563#2:1622\n1634#2,3:1623\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$addCombineKey$1\n*L\n986#1:1615\n987#1:1616,2\n986#1:1618\n997#1:1619\n997#1:1620,2\n997#1:1622\n997#1:1623,3\n*E\n"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<String> $keys;
        int label;
        final /* synthetic */ HMCloudMainViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(List<String> list, HMCloudMainViewModel hMCloudMainViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$keys = list;
            this.this$0 = hMCloudMainViewModel;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$7$lambda$6(HMKeyItem hMKeyItem, int i10, int i11, int i12, int i13) {
            hMKeyItem.setX(i10);
            hMKeyItem.setY(i11);
            hMKeyItem.setWidth(i12);
            hMKeyItem.setHeight(i13);
            return Unit.INSTANCE;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$keys, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            List<HMKeyItem> arrayList;
            HMKeyData next;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it2 = this.$keys.iterator();
            while (true) {
                String nickname = null;
                if (!it2.hasNext()) {
                    break;
                }
                String str = (String) it2.next();
                Iterator<HMKeyData> it3 = HMKeyData.getEntries().iterator();
                do {
                    if (!it3.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it3.next();
                } while (!Intrinsics.areEqual(next.getKey(), str));
                HMKeyData hMKeyData = next;
                HMKeyItem hMKeyItem = new HMKeyItem();
                hMKeyItem.setKey(str);
                if (hMKeyData != null) {
                    nickname = hMKeyData.getNickname();
                }
                hMKeyItem.setName(nickname);
                arrayList2.add(hMKeyItem);
            }
            Ref.IntRef intRef = new Ref.IntRef();
            List<HMKeyItem> value = this.this$0.getEditKeys().getValue();
            if (value == null || (arrayList = CollectionsKt___CollectionsKt.toMutableList((Collection) value)) == null) {
                arrayList = new ArrayList<>();
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : arrayList) {
                if (StringsKt__StringsJVMKt.startsWith$default(((HMKeyItem) obj2).getKey(), "ck_", false, 2, null)) {
                    arrayList3.add(obj2);
                }
            }
            ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10));
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                String strSubstring = ((HMKeyItem) it4.next()).getKey().substring(3);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                arrayList4.add(Boxing.boxInt(Integer.parseInt(strSubstring)));
            }
            Iterator it5 = CollectionsKt___CollectionsKt.sorted(arrayList4).iterator();
            while (it5.hasNext()) {
                int iIntValue = ((Number) it5.next()).intValue();
                int i10 = intRef.element;
                if (iIntValue >= i10) {
                    if (iIntValue != i10) {
                        break;
                    }
                    intRef.element = i10 + 1;
                }
            }
            final HMKeyItem hMKeyItem2 = new HMKeyItem();
            HMCloudMainViewModel hMCloudMainViewModel = this.this$0;
            hMKeyItem2.setKey("ck_" + intRef.element);
            StringBuilder sb2 = new StringBuilder();
            sb2.append((char) 32452);
            sb2.append(intRef.element + 1);
            hMKeyItem2.setName(sb2.toString());
            hMCloudMainViewModel.computeNewSize(null, new Function4() { // from class: com.join.kotlin.module.hmcloud.viewmodel.g
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                    return HMCloudMainViewModel.AnonymousClass1.invokeSuspend$lambda$7$lambda$6(hMKeyItem2, ((Integer) obj3).intValue(), ((Integer) obj4).intValue(), ((Integer) obj5).intValue(), ((Integer) obj6).intValue());
                }
            });
            hMKeyItem2.setCombine(arrayList2);
            Iterator<HMKeyItem> it6 = arrayList.iterator();
            while (it6.hasNext()) {
                if (Intrinsics.areEqual(it6.next().getKey(), hMKeyItem2.getKey())) {
                    it6.remove();
                }
            }
            arrayList.add(hMKeyItem2);
            this.this$0.getEditKeys().postValue(arrayList);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$addKey$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$addKey$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$addKey$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1614:1\n295#2,2:1615\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$addKey$1\n*L\n892#1:1615,2\n*E\n"})
    static final class C13061 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $k;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13061(String str, Continuation<? super C13061> continuation) {
            super(2, continuation);
            this.$k = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$2$lambda$1(HMKeyItem hMKeyItem, int i10, int i11, int i12, int i13) {
            hMKeyItem.setX(i10);
            hMKeyItem.setY(i11);
            hMKeyItem.setWidth(i12);
            hMKeyItem.setHeight(i13);
            return Unit.INSTANCE;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13061(this.$k, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            HMKeyData next;
            List<HMKeyItem> arrayList;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            EnumEntries<HMKeyData> entries = HMKeyData.getEntries();
            String str = this.$k;
            Iterator<HMKeyData> it2 = entries.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!Intrinsics.areEqual(next.getKey(), str));
            HMKeyData hMKeyData = next;
            final HMKeyItem hMKeyItem = new HMKeyItem();
            String str2 = this.$k;
            HMCloudMainViewModel hMCloudMainViewModel = HMCloudMainViewModel.this;
            hMKeyItem.setKey(str2);
            hMKeyItem.setName(hMKeyData != null ? hMKeyData.getNickname() : null);
            hMCloudMainViewModel.computeNewSize(str2, new Function4() { // from class: com.join.kotlin.module.hmcloud.viewmodel.h
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                    return HMCloudMainViewModel.C13061.invokeSuspend$lambda$2$lambda$1(hMKeyItem, ((Integer) obj2).intValue(), ((Integer) obj3).intValue(), ((Integer) obj4).intValue(), ((Integer) obj5).intValue());
                }
            });
            List<HMKeyItem> value = HMCloudMainViewModel.this.getEditKeys().getValue();
            if (value == null || (arrayList = CollectionsKt___CollectionsKt.toMutableList((Collection) value)) == null) {
                arrayList = new ArrayList<>();
            }
            HMCloudMainViewModel hMCloudMainViewModel2 = HMCloudMainViewModel.this;
            arrayList.add(hMKeyItem);
            hMCloudMainViewModel2.getEditKeys().postValue(arrayList);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13061) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$collectOpInputData$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$collectOpInputData$1", f = "HMCloudMainViewModel.kt", i = {}, l = {664}, m = "invokeSuspend", n = {}, s = {})
    static final class C13071 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<HMInputOpData, Unit> $callback;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C13071(Function1<? super HMInputOpData, Unit> function1, Continuation<? super C13071> continuation) {
            super(2, continuation);
            this.$callback = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13071(this.$callback, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0037 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:12:0x0038  */
        /* JADX WARN: Code duplicated, block: B:15:0x0045  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0038 -> B:13:0x003d). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 1
                if (r1 == 0) goto L1e
                if (r1 != r2) goto L16
                java.lang.Object r1 = r6.L$0
                kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
                kotlin.ResultKt.throwOnFailure(r7)
                r3 = r1
                r1 = r0
                r0 = r6
                goto L3d
            L16:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1e:
                kotlin.ResultKt.throwOnFailure(r7)
                com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel r7 = com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel.this
                kotlinx.coroutines.channels.g r7 = com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel.access$getOpInputChannel$p(r7)
                kotlinx.coroutines.channels.ChannelIterator r7 = r7.iterator()
                r1 = r7
                r7 = r6
            L2d:
                r7.L$0 = r1
                r7.label = r2
                java.lang.Object r3 = r1.b(r7)
                if (r3 != r0) goto L38
                return r0
            L38:
                r5 = r0
                r0 = r7
                r7 = r3
                r3 = r1
                r1 = r5
            L3d:
                java.lang.Boolean r7 = (java.lang.Boolean) r7
                boolean r7 = r7.booleanValue()
                if (r7 == 0) goto L59
                java.lang.Object r7 = r3.next()
                com.haima.hmcp.beans.HMInputOpData r7 = (com.haima.hmcp.beans.HMInputOpData) r7
                kotlin.jvm.functions.Function1<com.haima.hmcp.beans.HMInputOpData, kotlin.Unit> r4 = r0.$callback     // Catch: java.lang.Throwable -> L51
                r4.invoke(r7)     // Catch: java.lang.Throwable -> L51
                goto L55
            L51:
                r7 = move-exception
                r7.printStackTrace()
            L55:
                r7 = r0
                r0 = r1
                r1 = r3
                goto L2d
            L59:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel.C13071.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13071) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$deleteCustomOpConfig$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$deleteCustomOpConfig$2", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ HandleCfg $cfg;
        final /* synthetic */ Function1<Boolean, Unit> $success;
        int label;
        final /* synthetic */ HMCloudMainViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(HandleCfg handleCfg, Function1<? super Boolean, Unit> function1, HMCloudMainViewModel hMCloudMainViewModel, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$cfg = handleCfg;
            this.$success = function1;
            this.this$0 = hMCloudMainViewModel;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(HMCloudMainViewModel hMCloudMainViewModel, HandleCfg handleCfg) {
            List<HandleCfg> arrayList;
            List<HandleCfg> value = hMCloudMainViewModel.getKeyTypeList().getValue();
            if (value == null || (arrayList = CollectionsKt___CollectionsKt.toMutableList((Collection) value)) == null) {
                arrayList = new ArrayList<>();
            }
            Iterator<HandleCfg> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (HandleCfg.INSTANCE.isEquals(it2.next(), handleCfg)) {
                    it2.remove();
                }
            }
            if (HandleCfg.INSTANCE.isEquals(handleCfg, hMCloudMainViewModel.getCurrentKeyType().getValue())) {
                hMCloudMainViewModel.switchOpConfig((HandleCfg) CollectionsKt___CollectionsKt.firstOrNull((List) arrayList));
            }
            hMCloudMainViewModel.getKeyTypeList().postValue(arrayList);
            return Unit.INSTANCE;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$cfg, this.$success, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            final HMCloudMainViewModel hMCloudMainViewModel = this.this$0;
            final HandleCfg handleCfg = this.$cfg;
            Function0 function0 = new Function0() { // from class: com.join.kotlin.module.hmcloud.viewmodel.i
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return HMCloudMainViewModel.AnonymousClass2.invokeSuspend$lambda$0(hMCloudMainViewModel, handleCfg);
                }
            };
            String url = this.$cfg.getUrl();
            if (url == null) {
                url = "";
            }
            if ((url.length() == 0) || !new File(url).exists()) {
                Boxing.boxInt(Log.e("opConfig", url + " is not exist"));
            } else {
                Boxing.boxBoolean(new File(url).delete());
            }
            function0.invoke();
            this.$success.invoke(Boxing.boxBoolean(true));
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$editCustomOpConfig$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$editCustomOpConfig$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13081 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ HandleCfg $cfg;
        int label;
        final /* synthetic */ HMCloudMainViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13081(HandleCfg handleCfg, HMCloudMainViewModel hMCloudMainViewModel, Continuation<? super C13081> continuation) {
            super(2, continuation);
            this.$cfg = handleCfg;
            this.this$0 = hMCloudMainViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13081(this.$cfg, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            HandleCfg handleCfg = this.$cfg;
            if (handleCfg != null) {
                this.this$0.getMenuAction().postValue(new HMMenuAction.EditOp(handleCfg, false, 2, null));
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13081) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$getGameCfgInfoBySrv$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$getGameCfgInfoBySrv$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13091 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        C13091(Continuation<? super C13091> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13091(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (HMCloudMainViewModel.this.gameCfgInfo != null) {
                return Unit.INSTANCE;
            }
            HMCloudMainViewModel hMCloudMainViewModel = HMCloudMainViewModel.this;
            com.join.mgps.rpc.c cVarC = hMCloudMainViewModel.accountClientV2;
            if (cVarC == null) {
                cVarC = com.join.mgps.rpc.impl.b.C();
            }
            hMCloudMainViewModel.accountClientV2 = cVarC;
            if (com.join.android.app.common.utils.m.j(HMCloudMainViewModel.this.getContext())) {
                try {
                    RequestGameCfgInfoArgs requestGameCfgInfoArgs = new RequestGameCfgInfoArgs();
                    UserInfo accountData = AccountUtil_.getInstance_(HMCloudMainViewModel.this.getContext()).getAccountData();
                    requestGameCfgInfoArgs.setUid(accountData.getUid());
                    requestGameCfgInfoArgs.setUserToken(accountData.getToken());
                    requestGameCfgInfoArgs.setGameId(HMCloudMainViewModel.this.getGameId());
                    RequestModel<RequestGameCfgInfoArgs> requestModel = new RequestModel<>(HMCloudMainViewModel.this.getContext());
                    requestModel.setArgs(requestGameCfgInfoArgs);
                    requestModel.makeSign();
                    requestModel.setUid(Boxing.boxLong(accountData.getUid()));
                    requestModel.setUserToken(accountData.getToken());
                    com.join.mgps.rpc.c cVar = HMCloudMainViewModel.this.accountClientV2;
                    ResponseModel<CloudGamingCfgInfo> responseModelA = cVar != null ? cVar.a(requestModel) : null;
                    if ((responseModelA != null ? responseModelA.getData() : null) != null) {
                        CloudGamingCfgInfo data = responseModelA.getData();
                        if (data != null) {
                            HMCloudMainViewModel hMCloudMainViewModel2 = HMCloudMainViewModel.this;
                            hMCloudMainViewModel2.gameCfgInfo = data;
                            hMCloudMainViewModel2.updateResolutionInfo();
                            hMCloudMainViewModel2.refreshKeyboardTypeList();
                            GameButtonTips game_button_tips = data.getGame_button_tips();
                            boolean z10 = false;
                            if (game_button_tips != null) {
                                GuideState value = hMCloudMainViewModel2.getGuideState().getValue();
                                if (Intrinsics.areEqual(game_button_tips.getTips_switch(), Boxing.boxBoolean(true)) && (value == null || (value instanceof GuideState.None))) {
                                    hMCloudMainViewModel2.getGuideState().postValue(new GuideState.Page(0, Boxing.boxInt(1)));
                                }
                                MutableLiveData<Boolean> showKeyTips = hMCloudMainViewModel2.getShowKeyTips();
                                Boolean explain_switch = game_button_tips.getExplain_switch();
                                showKeyTips.postValue(Boxing.boxBoolean(explain_switch != null ? explain_switch.booleanValue() : false));
                            }
                            MutableLiveData<Boolean> handleSupport = hMCloudMainViewModel2.getHandleSupport();
                            Integer handle_support = data.getHandle_support();
                            if (handle_support != null && handle_support.intValue() == 1) {
                                z10 = true;
                            }
                            handleSupport.postValue(Boxing.boxBoolean(z10));
                            Unit unit = Unit.INSTANCE;
                        }
                    } else {
                        HMCloudMainViewModel.this.refreshKeyboardTypeList();
                        Unit unit2 = Unit.INSTANCE;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    HMCloudMainViewModel.this.refreshKeyboardTypeList();
                    Unit unit3 = Unit.INSTANCE;
                }
            } else {
                HMCloudMainViewModel.this.refreshKeyboardTypeList();
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13091) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$getScreenBrightness$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$getScreenBrightness$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13101 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        int label;
        final /* synthetic */ HMCloudMainViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13101(Context context, HMCloudMainViewModel hMCloudMainViewModel, Continuation<? super C13101> continuation) {
            super(2, continuation);
            this.$context = context;
            this.this$0 = hMCloudMainViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13101(this.$context, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.this$0.getBrightness().postValue(Boxing.boxInt(this.this$0.getBrightness().getValue() != null ? Settings.System.getInt(this.$context.getContentResolver(), "screen_brightness", 153) : 153));
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13101) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadGameLocalConfig$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadGameLocalConfig$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13111 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        C13111(Continuation<? super C13111> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13111(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            List<TipBean> tipBeans;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            HMCloudMainViewModel hMCloudMainViewModel = HMCloudMainViewModel.this;
            com.join.mgps.rpc.k kVarP0 = hMCloudMainViewModel.gameClient;
            if (kVarP0 == null) {
                kVarP0 = com.join.mgps.rpc.impl.i.P0();
            }
            hMCloudMainViewModel.gameClient = kVarP0;
            HMCloudMainViewModel hMCloudMainViewModel2 = HMCloudMainViewModel.this;
            com.join.mgps.rpc.c cVarC = hMCloudMainViewModel2.accountClientV2;
            if (cVarC == null) {
                cVarC = com.join.mgps.rpc.impl.b.C();
            }
            hMCloudMainViewModel2.accountClientV2 = cVarC;
            if (HMCloudMainViewModel.this.getGameId().length() == 0) {
                return Unit.INSTANCE;
            }
            DownloadTask downloadTaskL = q5.f.M().L(HMCloudMainViewModel.this.getGameId());
            if (downloadTaskL != null && (tipBeans = downloadTaskL.getTipBeans()) != null) {
                HMCloudMainViewModel.this.isHmCloudPc().postValue(Boxing.boxBoolean(w0.m(tipBeans)));
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13111) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadLastCommonConfig$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadLastCommonConfig$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadLastCommonConfig$1\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1614:1\n10#2:1615\n10#2:1617\n1#3:1616\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadLastCommonConfig$1\n*L\n1382#1:1615\n1388#1:1617\n*E\n"})
    static final class C13121 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        C13121(Continuation<? super C13121> continuation) {
            super(2, continuation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(HMCloudMainViewModel hMCloudMainViewModel) {
            hMCloudMainViewModel.getBrightness().postValue(153);
            return Unit.INSTANCE;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13121(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            File file = new File(HMCloudMainViewModel.this.getConfigRoot(), "common_config/last_common_config.json");
            final HMCloudMainViewModel hMCloudMainViewModel = HMCloudMainViewModel.this;
            Function0 function0 = new Function0() { // from class: com.join.kotlin.module.hmcloud.viewmodel.j
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return HMCloudMainViewModel.C13121.invokeSuspend$lambda$0(hMCloudMainViewModel);
                }
            };
            if (!file.exists()) {
                function0.invoke();
                return Unit.INSTANCE;
            }
            String text$default = FilesKt__FileReadWriteKt.readText$default(file, null, 1, null);
            HMCloudMainViewModel hMCloudMainViewModel2 = HMCloudMainViewModel.this;
            HMCommonConfig hMCommonConfig = (HMCommonConfig) JsonMapper.getInstance().fromJson(text$default, HMCommonConfig.class);
            if (hMCommonConfig != null) {
                Integer brightness = hMCommonConfig.getBrightness();
                if (brightness != null) {
                    hMCloudMainViewModel2.getBrightness().postValue(Boxing.boxInt(brightness.intValue()));
                }
                String viewRatio = hMCommonConfig.getViewRatio();
                if (viewRatio != null) {
                    hMCloudMainViewModel2.getGameRatio().postValue(viewRatio);
                }
                Boolean mute = hMCommonConfig.getMute();
                if (mute != null) {
                    hMCloudMainViewModel2.getMute().postValue(Boxing.boxBoolean(mute.booleanValue()));
                }
                Boolean isLatencyOn = hMCommonConfig.getIsLatencyOn();
                if (isLatencyOn != null) {
                    hMCloudMainViewModel2.isLatencyOn().postValue(Boxing.boxBoolean(isLatencyOn.booleanValue()));
                }
                String currentResolutionInfo = hMCommonConfig.getCurrentResolutionInfo();
                hMCloudMainViewModel2.lastResolutionInfo = currentResolutionInfo != null ? (ResolutionInfo) JsonMapper.getInstance().fromJson(currentResolutionInfo, ResolutionInfo.class) : null;
            } else {
                function0.invoke();
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13121) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadLastOpConfig$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadLastOpConfig$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadLastOpConfig$1\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n*L\n1#1,1614:1\n10#2:1615\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadLastOpConfig$1\n*L\n1340#1:1615\n*E\n"})
    static final class C13131 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        C13131(Continuation<? super C13131> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13131(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            File file = new File(HMCloudMainViewModel.this.getConfigRoot(), "op_config/last_op_config.json");
            if (!file.exists()) {
                return Unit.INSTANCE;
            }
            String text$default = FilesKt__FileReadWriteKt.readText$default(file, null, 1, null);
            HMCloudMainViewModel hMCloudMainViewModel = HMCloudMainViewModel.this;
            HMOpConfig hMOpConfig = (HMOpConfig) JsonMapper.getInstance().fromJson(text$default, HMOpConfig.class);
            if (hMOpConfig != null) {
                hMCloudMainViewModel.switchOpConfig(hMOpConfig.getCfg());
                hMCloudMainViewModel.setOpConfig(hMOpConfig);
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13131) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadOpConfig$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadOpConfig$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n*L\n1#1,1614:1\n1#2:1615\n10#3:1616\n10#3:1617\n10#3:1618\n10#3:1619\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1\n*L\n1105#1:1616\n1112#1:1617\n1120#1:1618\n1129#1:1619\n*E\n"})
    static final class C13141 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ HandleCfg $cfg;
        final /* synthetic */ Function1<HMOpConfig, Unit> $onResult;
        int label;
        final /* synthetic */ HMCloudMainViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C13141(HandleCfg handleCfg, HMCloudMainViewModel hMCloudMainViewModel, Function1<? super HMOpConfig, Unit> function1, Continuation<? super C13141> continuation) {
            super(2, continuation);
            this.$cfg = handleCfg;
            this.this$0 = hMCloudMainViewModel;
            this.$onResult = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13141(this.$cfg, this.this$0, this.$onResult, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IOException {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.$cfg.getSource() == null) {
                String url = this.$cfg.getUrl();
                if (!(url == null || url.length() == 0)) {
                    String url2 = this.$cfg.getUrl();
                    if (url2 == null) {
                        url2 = "";
                    }
                    if (StringsKt__StringsJVMKt.startsWith$default(url2, "http", false, 2, null)) {
                        this.$cfg.setSource(Boxing.boxInt(HandleCfgSource.OFFICIAL.getValue()));
                    }
                }
            }
            Integer source = this.$cfg.getSource();
            int value = HandleCfgSource.DEFAULT.getValue();
            if (source == null || source.intValue() != value) {
                Integer source2 = this.$cfg.getSource();
                int value2 = HandleCfgSource.CUSTOM.getValue();
                if (source2 != null && source2.intValue() == value2) {
                    String url3 = this.$cfg.getUrl();
                    String str = url3 != null ? url3 : "";
                    if ((str.length() == 0) || !new File(str).exists()) {
                        return Unit.INSTANCE;
                    }
                    HMOpConfig hMOpConfig = (HMOpConfig) JsonMapper.getInstance().fromJson(FilesKt__FileReadWriteKt.readText$default(new File(str), null, 1, null), HMOpConfig.class);
                    Function1<HMOpConfig, Unit> function1 = this.$onResult;
                    if (function1 != null) {
                        function1.invoke(hMOpConfig);
                    }
                } else {
                    Integer source3 = this.$cfg.getSource();
                    int value3 = HandleCfgSource.OFFICIAL.getValue();
                    if (source3 != null && source3.intValue() == value3) {
                        Map map = this.this$0.cacheOpConfigMap;
                        String url4 = this.$cfg.getUrl();
                        if (url4 == null) {
                            url4 = "";
                        }
                        HMOpConfig hMOpConfig2 = (HMOpConfig) map.get(url4);
                        if (hMOpConfig2 != null) {
                            Function1<HMOpConfig, Unit> function2 = this.$onResult;
                            if (function2 != null) {
                                function2.invoke(hMOpConfig2);
                            }
                            return Unit.INSTANCE;
                        }
                        HMOpConfig hMOpConfig3 = (HMOpConfig) JsonMapper.getInstance().fromJson(this.this$0.readJsonFromUrl(this.$cfg.getUrl()), HMOpConfig.class);
                        if (hMOpConfig3 != null) {
                            HMCloudMainViewModel hMCloudMainViewModel = this.this$0;
                            HandleCfg handleCfg = this.$cfg;
                            Map map2 = hMCloudMainViewModel.cacheOpConfigMap;
                            String url5 = handleCfg.getUrl();
                            map2.put(url5 != null ? url5 : "", hMOpConfig3);
                        }
                        Function1<HMOpConfig, Unit> function3 = this.$onResult;
                        if (function3 != null) {
                            function3.invoke(hMOpConfig3);
                        }
                    }
                }
            } else if (this.$cfg.getCfg_type() == HandleType.GAME_PAD.getValue()) {
                InputStream inputStreamOpen = this.this$0.getContext().getAssets().open("hmcloud/default/op_gamepad_default.json");
                Function1<HMOpConfig, Unit> function4 = this.$onResult;
                try {
                    Intrinsics.checkNotNull(inputStreamOpen);
                    Reader inputStreamReader = new InputStreamReader(inputStreamOpen, Charsets.UTF_8);
                    BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
                    try {
                        String text = TextStreamsKt.readText(bufferedReader);
                        CloseableKt.closeFinally(bufferedReader, null);
                        HMOpConfig hMOpConfig4 = (HMOpConfig) JsonMapper.getInstance().fromJson(text, HMOpConfig.class);
                        if (function4 != null) {
                            function4.invoke(hMOpConfig4);
                        }
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(inputStreamOpen, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(bufferedReader, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.closeFinally(inputStreamOpen, th3);
                        throw th4;
                    }
                }
            } else if (this.$cfg.getCfg_type() == HandleType.KEYBOARD.getValue()) {
                InputStream inputStreamOpen2 = this.this$0.getContext().getAssets().open("hmcloud/default/op_keyboard_default.json");
                Function1<HMOpConfig, Unit> function5 = this.$onResult;
                try {
                    Intrinsics.checkNotNull(inputStreamOpen2);
                    Reader inputStreamReader2 = new InputStreamReader(inputStreamOpen2, Charsets.UTF_8);
                    BufferedReader bufferedReader2 = inputStreamReader2 instanceof BufferedReader ? (BufferedReader) inputStreamReader2 : new BufferedReader(inputStreamReader2, 8192);
                    try {
                        String text2 = TextStreamsKt.readText(bufferedReader2);
                        CloseableKt.closeFinally(bufferedReader2, null);
                        HMOpConfig hMOpConfig5 = (HMOpConfig) JsonMapper.getInstance().fromJson(text2, HMOpConfig.class);
                        if (function5 != null) {
                            function5.invoke(hMOpConfig5);
                        }
                        Unit unit2 = Unit.INSTANCE;
                        CloseableKt.closeFinally(inputStreamOpen2, null);
                    } catch (Throwable th5) {
                        try {
                            throw th5;
                        } catch (Throwable th6) {
                            CloseableKt.closeFinally(bufferedReader2, th5);
                            throw th6;
                        }
                    }
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        CloseableKt.closeFinally(inputStreamOpen2, th7);
                        throw th8;
                    }
                }
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13141) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadTemplate$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadTemplate$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadTemplate$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1614:1\n1869#2,2:1615\n1869#2,2:1617\n1869#2,2:1619\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadTemplate$1\n*L\n462#1:1615,2\n467#1:1617,2\n472#1:1619,2\n*E\n"})
    static final class C13151 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $type;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13151(int i10, Continuation<? super C13151> continuation) {
            super(2, continuation);
            this.$type = i10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13151(this.$type, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ControllerTemplate controller_type;
            List<HandleCfg> handle;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ArrayList arrayList = new ArrayList();
            HandleCfg handleCfg = new HandleCfg();
            int i10 = this.$type;
            handleCfg.setName(i10 == 0 ? "默认手柄" : "默认键盘");
            handleCfg.setCfg_type(i10);
            handleCfg.setSource(Boxing.boxInt(HandleCfgSource.DEFAULT.getValue()));
            arrayList.add(handleCfg);
            CloudGamingCfgInfo cloudGamingCfgInfo = HMCloudMainViewModel.this.gameCfgInfo;
            if (cloudGamingCfgInfo != null && (controller_type = cloudGamingCfgInfo.getController_type()) != null) {
                int i11 = this.$type;
                if (i11 == HandleType.KEYBOARD.getValue()) {
                    List<HandleCfg> keyboard = controller_type.getKeyboard();
                    if (keyboard != null) {
                        Iterator<T> it2 = keyboard.iterator();
                        while (it2.hasNext()) {
                            arrayList.add((HandleCfg) it2.next());
                        }
                    }
                } else if (i11 == HandleType.GAME_PAD.getValue() && (handle = controller_type.getHandle()) != null) {
                    Iterator<T> it3 = handle.iterator();
                    while (it3.hasNext()) {
                        arrayList.add((HandleCfg) it3.next());
                    }
                }
            }
            List<HMOpConfig> customOpConfig = HMCloudMainViewModel.this.getCustomOpConfig();
            int i12 = this.$type;
            Iterator<T> it4 = customOpConfig.iterator();
            while (it4.hasNext()) {
                HandleCfg cfg = ((HMOpConfig) it4.next()).getCfg();
                if (cfg != null && cfg.getCfg_type() == i12) {
                    arrayList.add(cfg);
                }
            }
            HMCloudMainViewModel.this.getTemplateList().postValue(arrayList);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13151) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$onSwitchResolution$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$onSwitchResolution$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1614:1\n295#2,2:1615\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1\n*L\n412#1:1615,2\n*E\n"})
    static final class C13161 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ String $name;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13161(String str, String str2, Continuation<? super C13161> continuation) {
            super(2, continuation);
            this.$id = str;
            this.$name = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13161(this.$id, this.$name, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:25:0x007e  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v12, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            T t10;
            String str;
            Object next;
            boolean z10;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            HMCloudMainViewModel.this.getMenuAction().postValue(new HMMenuAction.OnSwitchResolution(this.$id));
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            String str2 = this.$name;
            if (str2 == null) {
                t10 = str2;
                t10 = "";
            }
            t10 = str2;
            objectRef.element = t10;
            ResolutionInfo resolutionInfoFindResolutionById = HMCloudMainViewModel.this.findResolutionById(this.$id);
            if (resolutionInfoFindResolutionById != null) {
                HMCloudMainViewModel hMCloudMainViewModel = HMCloudMainViewModel.this;
                String str3 = this.$id;
                List<PictureSetting> value = hMCloudMainViewModel.getPictureSettingList().getValue();
                if (value != null) {
                    Iterator<T> it2 = value.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                        PictureSetting pictureSetting = (PictureSetting) next;
                        if (!Intrinsics.areEqual(pictureSetting.getId(), str3)) {
                            if (Intrinsics.areEqual(resolutionInfoFindResolutionById.resolution, pictureSetting.getResolution())) {
                                int i10 = resolutionInfoFindResolutionById.frameRate;
                                Integer frame_rate = pictureSetting.getFrame_rate();
                                z10 = frame_rate != null && i10 == frame_rate.intValue();
                            }
                        }
                    } while (!z10);
                    PictureSetting pictureSetting2 = (PictureSetting) next;
                    if (pictureSetting2 != null) {
                        if (pictureSetting2.getShow_frame_mark()) {
                            objectRef.element = pictureSetting2.getName() + '-' + pictureSetting2.getFrame_rate() + (char) 24103;
                        } else {
                            objectRef.element = pictureSetting2.getName();
                        }
                    }
                }
            }
            MutableLiveData<String> toast = HMCloudMainViewModel.this.getToast();
            if (((CharSequence) objectRef.element).length() == 0) {
                str = "正在切换分辨率";
            } else {
                str = "正在切换至" + ((String) objectRef.element);
            }
            toast.postValue(str);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13161) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$refreshKeyboardTypeList$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$refreshKeyboardTypeList$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$refreshKeyboardTypeList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1614:1\n1869#2,2:1615\n1869#2,2:1617\n295#2,2:1619\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$refreshKeyboardTypeList$1\n*L\n1037#1:1615,2\n1049#1:1617,2\n1059#1:1619,2\n*E\n"})
    static final class C13171 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        C13171(Continuation<? super C13171> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13171(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object next;
            List<HandleCfg> handle_cfg;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ArrayList arrayList = new ArrayList();
            CloudGamingCfgInfo cloudGamingCfgInfo = HMCloudMainViewModel.this.gameCfgInfo;
            if (cloudGamingCfgInfo != null && (handle_cfg = cloudGamingCfgInfo.getHandle_cfg()) != null) {
                for (HandleCfg handleCfg : handle_cfg) {
                    handleCfg.setSource(Boxing.boxInt(HandleCfgSource.OFFICIAL.getValue()));
                    arrayList.add(handleCfg);
                }
            }
            HandleCfg handleCfg2 = new HandleCfg();
            handleCfg2.setName("默认手柄");
            handleCfg2.setSource(Boxing.boxInt(HandleCfgSource.DEFAULT.getValue()));
            handleCfg2.setCfg_type(HandleType.GAME_PAD.getValue());
            arrayList.add(handleCfg2);
            Iterator<T> it2 = HMCloudMainViewModel.this.getCustomOpConfig().iterator();
            while (it2.hasNext()) {
                HandleCfg cfg = ((HMOpConfig) it2.next()).getCfg();
                if (cfg != null) {
                    arrayList.add(cfg);
                }
            }
            HandleCfg handleCfg3 = new HandleCfg();
            handleCfg3.setName("添加方案");
            handleCfg3.setSource(Boxing.boxInt(HandleCfgSource.None.getValue()));
            arrayList.add(handleCfg3);
            HMCloudMainViewModel.this.getKeyTypeList().postValue(arrayList);
            HMCloudMainViewModel hMCloudMainViewModel = HMCloudMainViewModel.this;
            Iterator it3 = arrayList.iterator();
            do {
                if (!it3.hasNext()) {
                    next = null;
                    break;
                }
                next = it3.next();
            } while (!HandleCfg.INSTANCE.isEquals((HandleCfg) next, hMCloudMainViewModel.getCurrentKeyType().getValue()));
            if ((((HandleCfg) next) == null || HMCloudMainViewModel.this.getCurrentKeyType().getValue() == null) && HMCloudMainViewModel.this.isKeyboardEnable()) {
                HMCloudMainViewModel.this.switchOpConfig((HandleCfg) CollectionsKt___CollectionsKt.firstOrNull((List) arrayList));
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13171) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$refreshKeys$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$refreshKeys$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13181 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        C13181(Continuation<? super C13181> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13181(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            List<HMKeyItem> listEmptyList;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            MutableLiveData<List<HMKeyItem>> currentKeys = HMCloudMainViewModel.this.getCurrentKeys();
            List<HMKeyItem> value = HMCloudMainViewModel.this.getCurrentKeys().getValue();
            if (value == null || (listEmptyList = CollectionsKt___CollectionsKt.toList(value)) == null) {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            currentKeys.postValue(listEmptyList);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13181) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$requestPlaytimeSummary$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$requestPlaytimeSummary$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13191 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        C13191(Continuation<? super C13191> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13191(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            HMCloudMainViewModel hMCloudMainViewModel = HMCloudMainViewModel.this;
            com.join.mgps.rpc.c cVarC = hMCloudMainViewModel.accountClientV2;
            if (cVarC == null) {
                cVarC = com.join.mgps.rpc.impl.b.C();
            }
            hMCloudMainViewModel.accountClientV2 = cVarC;
            MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSummaryRequest.b bVarNewBuilder = MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSummaryRequest.newBuilder();
            UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
            bVarNewBuilder.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
            HashMap map = new HashMap();
            map.put("uid", bVarNewBuilder.getUid() + "");
            map.put(com.czhj.sdk.common.Constants.TOKEN, bVarNewBuilder.getToken());
            map.put("appVersion", "517_6.1.7.0");
            bVarNewBuilder.setSign(k2.d(map));
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13191) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$saveCustomOpConfig$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$saveCustomOpConfig$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1614:1\n1869#2:1615\n1870#2:1617\n10#3:1616\n1#4:1618\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1\n*L\n1178#1:1615\n1178#1:1617\n1182#1:1616\n*E\n"})
    static final class C13201 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $cfgType;
        final /* synthetic */ Integer $height;
        final /* synthetic */ String $name;
        final /* synthetic */ String $path;
        final /* synthetic */ Integer $width;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13201(String str, String str2, int i10, Integer num, Integer num2, Continuation<? super C13201> continuation) {
            super(2, continuation);
            this.$path = str;
            this.$name = str2;
            this.$cfgType = i10;
            this.$width = num;
            this.$height = num2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final File invokeSuspend$lambda$0(File file, String str, int i10) {
            return new File(file, str + i10 + ".json");
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13201(this.$path, this.$name, this.$cfgType, this.$width, this.$height, continuation);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v24, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r1v0, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            File parentFile;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            final File file = new File(HMCloudMainViewModel.this.getConfigRoot() + "/op_config/custom");
            if (!file.exists()) {
                file.mkdirs();
            }
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ?? r10 = this.$path;
            objectRef.element = r10;
            CharSequence charSequence = (CharSequence) r10;
            boolean z10 = false;
            if (charSequence == null || charSequence.length() == 0) {
                final String str = "op_cfg_custom_";
                Function1 function1 = new Function1() { // from class: com.join.kotlin.module.hmcloud.viewmodel.k
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return HMCloudMainViewModel.C13201.invokeSuspend$lambda$0(file, str, ((Integer) obj2).intValue());
                    }
                };
                Iterator<Integer> it2 = RangesKt___RangesKt.until(0, HMCloudMainViewModel.this.getMaxOpConfigSize()).iterator();
                int i10 = 0;
                while (it2.hasNext()) {
                    int iNextInt = ((IntIterator) it2).nextInt();
                    if (((File) function1.invoke(Boxing.boxInt(iNextInt))).exists()) {
                        try {
                            JsonMapper.getInstance().fromJson(FilesKt__FileReadWriteKt.readText$default((File) function1.invoke(Boxing.boxInt(iNextInt)), null, 1, null), HMOpConfig.class);
                        } catch (Exception unused) {
                            Unit unit = Unit.INSTANCE;
                            i10 = iNextInt;
                        }
                    }
                    i10 = iNextInt;
                }
                objectRef.element = ((File) function1.invoke(Boxing.boxInt(i10))).getAbsolutePath();
            }
            CharSequence charSequence2 = (CharSequence) objectRef.element;
            if (charSequence2 == null || charSequence2.length() == 0) {
                return Unit.INSTANCE;
            }
            File file2 = new File((String) objectRef.element);
            HandleCfg handleCfg = new HandleCfg();
            String str2 = this.$name;
            int i11 = this.$cfgType;
            handleCfg.setName(str2);
            handleCfg.setUrl(file2.getAbsolutePath());
            HandleCfgSource handleCfgSource = HandleCfgSource.CUSTOM;
            handleCfg.setSource(Boxing.boxInt(handleCfgSource.getValue()));
            handleCfg.setOffical(null);
            handleCfg.setCfg_type(i11);
            HMOpConfig value = HMCloudMainViewModel.this.getEditOpConfig().getValue();
            if (value != null) {
                HMCloudMainViewModel hMCloudMainViewModel = HMCloudMainViewModel.this;
                Integer num = this.$width;
                Integer num2 = this.$height;
                String str3 = this.$path;
                String str4 = this.$name;
                if (value.getCfg() == null) {
                    value.setCfg(handleCfg);
                } else {
                    HandleCfg cfg = value.getCfg();
                    if (cfg != null) {
                        cfg.setName(str4);
                        cfg.setUrl(file2.getAbsolutePath());
                        cfg.setSource(Boxing.boxInt(handleCfgSource.getValue()));
                        cfg.setOffical(null);
                    }
                }
                value.setKeys(hMCloudMainViewModel.getEditKeys().getValue());
                if (num != null) {
                    value.setLayoutWidth(Boxing.boxInt(num.intValue()));
                }
                if (num2 != null) {
                    value.setLayoutHeight(Boxing.boxInt(num2.intValue()));
                }
                value.setDensity(Boxing.boxFloat(hMCloudMainViewModel.getContext().getResources().getDisplayMetrics().density));
                hMCloudMainViewModel.fillOpConfig(value);
                HandleCfg cfg2 = value.getCfg();
                if (cfg2 != null) {
                    cfg2.setFrom(null);
                }
                String strB = n6.b.b(value);
                File parentFile2 = file2.getParentFile();
                if (parentFile2 != null && parentFile2.exists()) {
                    z10 = true;
                }
                if (!z10 && (parentFile = file2.getParentFile()) != null) {
                    Boxing.boxBoolean(parentFile.mkdirs());
                }
                FilesKt__FileReadWriteKt.writeText$default(file2, strB, null, 2, null);
                hMCloudMainViewModel.getMenuAction().postValue(new HMMenuAction.EditOpClose(value.getCfg(), true));
                if (!Intrinsics.areEqual(str3, objectRef.element) || HandleCfg.INSTANCE.isEquals(hMCloudMainViewModel.getCurrentKeyType().getValue(), value.getCfg())) {
                    hMCloudMainViewModel.switchOpConfig(value.getCfg());
                } else {
                    HMOpConfig value2 = hMCloudMainViewModel.getCurrentOpConfig().getValue();
                    if (value2 != null) {
                        hMCloudMainViewModel.setOpConfig(value2);
                    }
                }
            }
            HMCloudMainViewModel.this.refreshKeyboardTypeList();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13201) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$saveLastCommonConfig$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$saveLastCommonConfig$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13211 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        C13211(Continuation<? super C13211> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13211(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            File parentFile;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            HMCommonConfig hMCommonConfig = new HMCommonConfig();
            ResolutionInfo value = HMCloudMainViewModel.this.getCurrentResolution().getValue();
            if (value != null) {
                hMCommonConfig.setCurrentResolutionInfo(n6.b.b(value));
            }
            hMCommonConfig.setBrightness(HMCloudMainViewModel.this.getBrightness().getValue());
            hMCommonConfig.setViewRatio(HMCloudMainViewModel.this.getGameRatio().getValue());
            hMCommonConfig.setMute(HMCloudMainViewModel.this.getMute().getValue());
            hMCommonConfig.setLatencyOn(HMCloudMainViewModel.this.isLatencyOn().getValue());
            String strB = n6.b.b(hMCommonConfig);
            File file = new File(HMCloudMainViewModel.this.getConfigRoot(), "common_config/last_common_config.json");
            File parentFile2 = file.getParentFile();
            boolean z10 = false;
            if (parentFile2 != null && parentFile2.exists()) {
                z10 = true;
            }
            if (!z10 && (parentFile = file.getParentFile()) != null) {
                Boxing.boxBoolean(parentFile.mkdirs());
            }
            FilesKt__FileReadWriteKt.writeText$default(file, strB, null, 2, null);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13211) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$saveLastOpConfig$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$saveLastOpConfig$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13221 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        C13221(Continuation<? super C13221> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13221(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            File parentFile;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            HMOpConfig hMOpConfig = new HMOpConfig();
            hMOpConfig.setCfg(HMCloudMainViewModel.this.getCurrentKeyType().getValue());
            hMOpConfig.setKeys(HMCloudMainViewModel.this.getEditKeys().getValue());
            HMCloudMainViewModel.this.fillOpConfig(hMOpConfig);
            String strB = n6.b.b(hMOpConfig);
            File file = new File(HMCloudMainViewModel.this.getConfigRoot(), "op_config/last_op_config.json");
            File parentFile2 = file.getParentFile();
            boolean z10 = false;
            if (parentFile2 != null && parentFile2.exists()) {
                z10 = true;
            }
            if (!z10 && (parentFile = file.getParentFile()) != null) {
                Boxing.boxBoolean(parentFile.mkdirs());
            }
            FilesKt__FileReadWriteKt.writeText$default(file, strB, null, 2, null);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13221) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$setOpLayoutSize$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$setOpLayoutSize$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13231 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $height;
        final /* synthetic */ int $width;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13231(int i10, int i11, Continuation<? super C13231> continuation) {
            super(2, continuation);
            this.$width = i10;
            this.$height = i11;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13231(this.$width, this.$height, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            HMCloudMainViewModel.this.layoutSize = new Pair(Boxing.boxInt(this.$width), Boxing.boxInt(this.$height));
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13231) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$startVibrate$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$startVibrate$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13251 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        C13251(Continuation<? super C13251> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13251(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            HMInputDeviceManager hMInputDeviceManager = HMCloudMainViewModel.this.inputDeviceManager;
            if (hMInputDeviceManager != null) {
                hMInputDeviceManager.startVibrate();
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13251) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$switchOpConfig$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$switchOpConfig$1", f = "HMCloudMainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13261 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ HandleCfg $cfg;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13261(HandleCfg handleCfg, Continuation<? super C13261> continuation) {
            super(2, continuation);
            this.$cfg = handleCfg;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(HMCloudMainViewModel hMCloudMainViewModel, HandleCfg handleCfg, HMOpConfig hMOpConfig) {
            List<HMKeyItem> listEmptyList;
            hMCloudMainViewModel.getCurrentKeyType().postValue(handleCfg);
            hMCloudMainViewModel.getCurrentOpConfig().postValue(hMOpConfig);
            MutableLiveData<List<HMKeyItem>> currentKeys = hMCloudMainViewModel.getCurrentKeys();
            if (hMOpConfig == null || (listEmptyList = hMOpConfig.getKeys()) == null) {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            currentKeys.postValue(listEmptyList);
            return Unit.INSTANCE;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMainViewModel.this.new C13261(this.$cfg, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            final HMCloudMainViewModel hMCloudMainViewModel = HMCloudMainViewModel.this;
            final HandleCfg handleCfg = this.$cfg;
            hMCloudMainViewModel.loadOpConfig(handleCfg, new Function1() { // from class: com.join.kotlin.module.hmcloud.viewmodel.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return HMCloudMainViewModel.C13261.invokeSuspend$lambda$0(hMCloudMainViewModel, handleCfg, (HMOpConfig) obj2);
                }
            });
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13261) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    @Inject
    public HMCloudMainViewModel(@ApplicationContext @NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.toast = new SafeLiveData();
        this.brightness = new SafeLiveData();
        Boolean bool = Boolean.FALSE;
        this.mute = new MutableLiveData<>(bool);
        this.gameRatio = new MutableLiveData<>(null);
        Boolean bool2 = Boolean.TRUE;
        this.isLatencyOn = new MutableLiveData<>(bool2);
        this.currentResolution = new MutableLiveData<>();
        this.resolutionList = new MutableLiveData<>(CollectionsKt__CollectionsKt.emptyList());
        this.pictureSettingList = new MutableLiveData<>(CollectionsKt__CollectionsKt.emptyList());
        this.currentKeyType = new MutableLiveData<>();
        this.keyTypeList = new MutableLiveData<>(CollectionsKt__CollectionsKt.emptyList());
        this.templateList = new MutableLiveData<>(CollectionsKt__CollectionsKt.emptyList());
        this.keyAlpha = new MutableLiveData<>(Float.valueOf(0.7f));
        this.keyVibrate = new MutableLiveData<>(bool2);
        this.keyHide = new MutableLiveData<>(bool);
        this.pinchToZoom = new MutableLiveData<>(bool);
        this.keyboardInput = new MutableLiveData<>(bool2);
        this.touchMode = new MutableLiveData<>();
        this.mouseSensitivity = new MutableLiveData<>(Float.valueOf(1.6f));
        this.remainTime = new MutableLiveData<>(0L);
        this.playTime = new MutableLiveData<>(0L);
        this.startPlayTime = new MutableLiveData<>(0L);
        this.playtimeSummary = new MutableLiveData<>(null);
        this.menuAction = new MutableLiveData<>();
        this.isHmCloudPc = new MutableLiveData<>(bool);
        this.handleSupport = new MutableLiveData<>(bool);
        this.gameId = "";
        this.cid = "";
        this.currentOpConfig = new MutableLiveData<>();
        this.currentKeys = new MutableLiveData<>(CollectionsKt__CollectionsKt.emptyList());
        this.editOpConfig = new MutableLiveData<>();
        this.editKeys = new MutableLiveData<>(new ArrayList());
        this.customOpConfigList = new ArrayList();
        this.maxOpConfigSize = 3;
        this.layoutSize = TuplesKt.to(0, 0);
        this.showKeyTips = new MutableLiveData<>(bool);
        this.guideState = new MutableLiveData<>(GuideState.None.INSTANCE);
        this.inputDeviceSize = new MutableLiveData<>(0);
        this.inputDevice = new MutableLiveData<>(null);
        this.inputEventMapper = new InputEventMapper(this);
        this.inputEventData = o.a(1, 3, BufferOverflow.SUSPEND);
        this.directionMap = MapsKt__MapsKt.mutableMapOf(TuplesKt.to(HMDpadDirection.Up, 1), TuplesKt.to(HMDpadDirection.Down, 2), TuplesKt.to(HMDpadDirection.Left, 4), TuplesKt.to(HMDpadDirection.Right, 8));
        this.gamepadMap = MapsKt__MapsKt.mapOf(TuplesKt.to(HMKeyData.BtnX.getKey(), 16384), TuplesKt.to(HMKeyData.BtnY.getKey(), 32768), TuplesKt.to(HMKeyData.BtnA.getKey(), 4096), TuplesKt.to(HMKeyData.BtnB.getKey(), 8192), TuplesKt.to(HMKeyData.BtnLT.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpXinputLeftTrigger), TuplesKt.to(HMKeyData.BtnLB.getKey(), 256), TuplesKt.to(HMKeyData.BtnRT.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpXinputRightTrigger), TuplesKt.to(HMKeyData.BtnRB.getKey(), 512), TuplesKt.to(HMKeyData.BtnLS.getKey(), 64), TuplesKt.to(HMKeyData.BtnRS.getKey(), 128), TuplesKt.to(HMKeyData.BtnSelect.getKey(), 32), TuplesKt.to(HMKeyData.BtnStart.getKey(), 16));
        this.keyboardMap = MapsKt__MapsKt.mapOf(TuplesKt.to(HMKeyData.VkEscape.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkEscape), TuplesKt.to(HMKeyData.VkF1.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkF1), TuplesKt.to(HMKeyData.VkF2.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkF2), TuplesKt.to(HMKeyData.VkF3.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkF3), TuplesKt.to(HMKeyData.VkF4.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkF4), TuplesKt.to(HMKeyData.VkF5.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkF5), TuplesKt.to(HMKeyData.VkF6.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkF6), TuplesKt.to(HMKeyData.VkF7.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkF7), TuplesKt.to(HMKeyData.VkF8.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkF8), TuplesKt.to(HMKeyData.VkF9.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkF9), TuplesKt.to(HMKeyData.VkF10.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkF10), TuplesKt.to(HMKeyData.VkF11.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkF11), TuplesKt.to(HMKeyData.VkF12.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkF12), TuplesKt.to(HMKeyData.VkInsert.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkInsert), TuplesKt.to(HMKeyData.VkDelete.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkDelete), TuplesKt.to(HMKeyData.VkPageUp.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkPrior), TuplesKt.to(HMKeyData.VkPageDown.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkNext), TuplesKt.to(HMKeyData.VkHome.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkHome), TuplesKt.to(HMKeyData.VkEnd.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkEnd), TuplesKt.to(HMKeyData.VkBackquote.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkOem3), TuplesKt.to(HMKeyData.Key1.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKey1), TuplesKt.to(HMKeyData.Key2.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKey2), TuplesKt.to(HMKeyData.Key3.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKey3), TuplesKt.to(HMKeyData.Key4.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKey4), TuplesKt.to(HMKeyData.Key5.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKey5), TuplesKt.to(HMKeyData.Key6.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKey6), TuplesKt.to(HMKeyData.Key7.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKey7), TuplesKt.to(HMKeyData.Key8.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKey8), TuplesKt.to(HMKeyData.Key9.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKey9), TuplesKt.to(HMKeyData.Key0.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKey0), TuplesKt.to(HMKeyData.VkMinus.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkSubtract), TuplesKt.to(HMKeyData.VkEquals.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkOemPlus), TuplesKt.to(HMKeyData.VkBackspace.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkBack), TuplesKt.to(HMKeyData.VkTab.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkTab), TuplesKt.to(HMKeyData.KeyQ.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyQ), TuplesKt.to(HMKeyData.KeyW.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyW), TuplesKt.to(HMKeyData.KeyE.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyE), TuplesKt.to(HMKeyData.KeyR.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyR), TuplesKt.to(HMKeyData.KeyT.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyT), TuplesKt.to(HMKeyData.KeyY.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyY), TuplesKt.to(HMKeyData.KeyU.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyU), TuplesKt.to(HMKeyData.KeyI.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyI), TuplesKt.to(HMKeyData.KeyO.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyO), TuplesKt.to(HMKeyData.KeyP.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyP), TuplesKt.to(HMKeyData.VkBracketLeft.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkOem4), TuplesKt.to(HMKeyData.VkBracketRight.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkOem6), TuplesKt.to(HMKeyData.VkBackslash.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkOem5), TuplesKt.to(HMKeyData.VkCapsLock.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkCapital), TuplesKt.to(HMKeyData.KeyA.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyA), TuplesKt.to(HMKeyData.KeyS.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyS), TuplesKt.to(HMKeyData.KeyD.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyD), TuplesKt.to(HMKeyData.KeyF.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyF), TuplesKt.to(HMKeyData.KeyG.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyG), TuplesKt.to(HMKeyData.KeyH.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyH), TuplesKt.to(HMKeyData.KeyJ.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyJ), TuplesKt.to(HMKeyData.KeyK.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyK), TuplesKt.to(HMKeyData.KeyL.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyL), TuplesKt.to(HMKeyData.VkSemicolon.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkOem1), TuplesKt.to(HMKeyData.VkQuote.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkOem7), TuplesKt.to(HMKeyData.VkEnter.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkReturn), TuplesKt.to(HMKeyData.VkShift.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkShift), TuplesKt.to(HMKeyData.KeyZ.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyZ), TuplesKt.to(HMKeyData.KeyX.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyX), TuplesKt.to(HMKeyData.KeyC.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyC), TuplesKt.to(HMKeyData.KeyV.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyV), TuplesKt.to(HMKeyData.KeyB.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyB), TuplesKt.to(HMKeyData.KeyN.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyN), TuplesKt.to(HMKeyData.KeyM.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyKeyM), TuplesKt.to(HMKeyData.VkComma.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkOemComma), TuplesKt.to(HMKeyData.VkPeriod.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkOemPeriod), TuplesKt.to(HMKeyData.VkSlash.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkOem2), TuplesKt.to(HMKeyData.VkCtrl.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkControl), TuplesKt.to(HMKeyData.VkAlt.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkMenu), TuplesKt.to(HMKeyData.VkWinLeft.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkLwin), TuplesKt.to(HMKeyData.VkWinRight.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkRwin), TuplesKt.to(HMKeyData.VkSpace.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkSpace), TuplesKt.to(HMKeyData.VkUp.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkUp), TuplesKt.to(HMKeyData.VkDown.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkDown), TuplesKt.to(HMKeyData.VkLeft.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkLeft), TuplesKt.to(HMKeyData.VkRight.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpKeyVkRight), TuplesKt.to(HMKeyData.MouseLeft.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpMouseButtonLeft), TuplesKt.to(HMKeyData.MouseRight.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpMouseButtonRight), TuplesKt.to(HMKeyData.MouseMiddle.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpMouseButtonMiddle), TuplesKt.to(HMKeyData.MouseWheel.getKey(), HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpMouseWheel));
        this.opEventPool = new LinkedHashMap();
        this.opInputChannel = kotlinx.coroutines.channels.i.d(Integer.MAX_VALUE, null, null, 6, null);
        this.gamepadEventPool = new LinkedHashMap();
        this.trackballAxis = MapsKt__MapsKt.mutableMapOf(TuplesKt.to(HMKeyData.JoyL.getKey(), TuplesKt.to(0, 0)), TuplesKt.to(HMKeyData.JoyR.getKey(), TuplesKt.to(0, 0)));
        this.trackballLastDirs = new LinkedHashMap();
        this.cacheOpConfigMap = new LinkedHashMap();
    }

    private final void appendCurrentTrackballState(HMInputOpData data) {
        ArrayList<HMInputOpData.HMOneInputOPData> opListArray = data.opListArray;
        Intrinsics.checkNotNullExpressionValue(opListArray, "opListArray");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = opListArray.iterator();
        while (it2.hasNext()) {
            HMInputOpData.HMOneInputOPData_InputOP hMOneInputOPData_InputOP = ((HMInputOpData.HMOneInputOPData) it2.next()).inputOp;
            if (hMOneInputOPData_InputOP != null) {
                arrayList.add(hMOneInputOPData_InputOP);
            }
        }
        HashSet hashSet = CollectionsKt___CollectionsKt.toHashSet(arrayList);
        Pair<Integer, Integer> pair = this.trackballAxis.get(HMKeyData.JoyL.getKey());
        if (pair == null) {
            pair = TuplesKt.to(0, 0);
        }
        int iIntValue = pair.component1().intValue();
        int iIntValue2 = pair.component2().intValue();
        appendCurrentTrackballState$addAxis(hashSet, data, HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpXinputThumbLx, iIntValue);
        appendCurrentTrackballState$addAxis(hashSet, data, HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpXinputThumbLy, iIntValue2);
        Pair<Integer, Integer> pair2 = this.trackballAxis.get(HMKeyData.JoyR.getKey());
        if (pair2 == null) {
            pair2 = TuplesKt.to(0, 0);
        }
        int iIntValue3 = pair2.component1().intValue();
        int iIntValue4 = pair2.component2().intValue();
        appendCurrentTrackballState$addAxis(hashSet, data, HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpXinputThumbRx, iIntValue3);
        appendCurrentTrackballState$addAxis(hashSet, data, HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpXinputThumbRy, iIntValue4);
    }

    private static final void appendCurrentTrackballState$addAxis(HashSet<HMInputOpData.HMOneInputOPData_InputOP> hashSet, HMInputOpData hMInputOpData, HMInputOpData.HMOneInputOPData_InputOP hMOneInputOPData_InputOP, int i10) {
        if (hashSet.contains(hMOneInputOPData_InputOP)) {
            return;
        }
        HMInputOpData.HMOneInputOPData hMOneInputOPData = new HMInputOpData.HMOneInputOPData();
        hMOneInputOPData.inputOp = hMOneInputOPData_InputOP;
        hMOneInputOPData.value = i10;
        hMInputOpData.opListArray.add(hMOneInputOPData);
    }

    private final void applyDirectionKeys(Map<HMDpadDirection, String> map, List<? extends HMDpadDirection> dirs) {
        boolean z10 = false;
        for (Map.Entry<HMDpadDirection, String> entry : map.entrySet()) {
            HMDpadDirection key = entry.getKey();
            String value = entry.getValue();
            boolean zContains = dirs.contains(key);
            if (zContains || this.opEventPool.containsKey(value)) {
                this.opEventPool.put(value, Boolean.valueOf(zContains));
                z10 = true;
            }
        }
        if (z10) {
            emitKeyboardOpPool();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void computeNewSize(String k10, Function4<? super Integer, ? super Integer, ? super Integer, ? super Integer, Unit> callback) {
        float dimension;
        float dimension2;
        HMKeyData hMKeyData = null;
        if (k10 != null) {
            for (HMKeyData hMKeyData2 : HMKeyData.getEntries()) {
                if (Intrinsics.areEqual(hMKeyData2.getKey(), k10)) {
                    hMKeyData = hMKeyData2;
                    break;
                }
            }
            hMKeyData = hMKeyData;
        }
        float f10 = this.context.getResources().getDisplayMetrics().density;
        int i10 = this.context.getResources().getDisplayMetrics().widthPixels;
        int i11 = this.context.getResources().getDisplayMetrics().heightPixels;
        float f11 = i10 / 2536;
        float f12 = i11 / GSSDK.OneInputOPData.InputOP.OP_TOUCH_MOVE_VALUE;
        switch (hMKeyData == null ? -1 : WhenMappings.$EnumSwitchMapping$0[hMKeyData.ordinal()]) {
            case 1:
            case 2:
            case 3:
                dimension = this.context.getResources().getDimension(R.dimen.wdp217);
                Math.min(f11, f12);
                dimension2 = dimension;
                break;
            case 4:
            case 5:
            case 6:
                dimension = this.context.getResources().getDimension(R.dimen.wdp227);
                Math.min(f11, f12);
                dimension2 = dimension;
                break;
            case 7:
            case 8:
            case 9:
            case 10:
                dimension = this.context.getResources().getDimension(R.dimen.wdp160);
                dimension2 = this.context.getResources().getDimension(R.dimen.wdp80);
                break;
            default:
                dimension = this.context.getResources().getDimension(R.dimen.wdp100);
                Math.min(f11, f12);
                dimension2 = dimension;
                break;
        }
        int iRoundToInt = MathKt__MathJVMKt.roundToInt(dimension);
        int iRoundToInt2 = MathKt__MathJVMKt.roundToInt(dimension2);
        int i12 = i10 - iRoundToInt;
        int i13 = i11 - iRoundToInt2;
        callback.invoke(Integer.valueOf(RangesKt___RangesKt.coerceIn(i12 / 2, 0, i12)), Integer.valueOf(RangesKt___RangesKt.coerceIn(i13 / 2, 0, i13)), Integer.valueOf(iRoundToInt), Integer.valueOf(iRoundToInt2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void deleteCustomOpConfig$default(HMCloudMainViewModel hMCloudMainViewModel, HandleCfg handleCfg, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = new Function1() { // from class: com.join.kotlin.module.hmcloud.viewmodel.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return HMCloudMainViewModel.deleteCustomOpConfig$lambda$29(((Boolean) obj2).booleanValue());
                }
            };
        }
        hMCloudMainViewModel.deleteCustomOpConfig(handleCfg, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit deleteCustomOpConfig$lambda$29(boolean z10) {
        return Unit.INSTANCE;
    }

    private final Pair<Integer, Integer> dirsToStickValue(Set<? extends HMDpadDirection> dirs) {
        if (dirs.isEmpty()) {
            return TuplesKt.to(0, 0);
        }
        float f10 = dirs.contains(HMDpadDirection.Left) ? -1.0f : 0.0f;
        if (dirs.contains(HMDpadDirection.Right)) {
            f10 += 1.0f;
        }
        float f11 = dirs.contains(HMDpadDirection.Up) ? 1.0f : 0.0f;
        if (dirs.contains(HMDpadDirection.Down)) {
            f11 -= 1.0f;
        }
        float fSqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
        if (fSqrt > 0.0f) {
            f10 /= fSqrt;
            f11 /= fSqrt;
        }
        float f12 = 32767;
        return TuplesKt.to(Integer.valueOf((int) (f10 * f12)), Integer.valueOf((int) (f11 * f12)));
    }

    private final void emitKeyboardOpPool() {
        HMInputOpData hMInputOpData = new HMInputOpData();
        for (Map.Entry<String, Boolean> entry : this.opEventPool.entrySet()) {
            String key = entry.getKey();
            boolean zBooleanValue = entry.getValue().booleanValue();
            HMKeyData hMKeyData = HMKeyData.MouseMoveUp;
            String key2 = hMKeyData.getKey();
            HMKeyData hMKeyData2 = HMKeyData.MouseMoveDown;
            HMInputOpData.HMOneInputOPData_InputOP hMOneInputOPData_InputOP = ArraysKt___ArraysKt.contains(new String[]{key2, hMKeyData2.getKey()}, key) ? this.keyboardMap.get(HMKeyData.MouseWheel.getKey()) : this.keyboardMap.get(key);
            if (hMOneInputOPData_InputOP != null) {
                HMInputOpData.HMOneInputOPData hMOneInputOPData = new HMInputOpData.HMOneInputOPData();
                hMOneInputOPData.inputOp = hMOneInputOPData_InputOP;
                if (Intrinsics.areEqual(key, hMKeyData.getKey())) {
                    hMOneInputOPData.value = zBooleanValue ? 1 : 0;
                } else if (Intrinsics.areEqual(key, hMKeyData2.getKey())) {
                    hMOneInputOPData.value = zBooleanValue ? 1 : 0;
                } else {
                    hMOneInputOPData.inputState = zBooleanValue ? HMInputOpData.HMOneInputOPData_InputState.HMOneInputOPData_InputState_OpStateDown : HMInputOpData.HMOneInputOPData_InputState.HMOneInputOPData_InputState_OpStateUp;
                }
                hMInputOpData.opListArray.add(hMOneInputOPData);
            }
        }
        enqueueOpInput(hMInputOpData);
        CollectionsKt__MutableCollectionsKt.removeAll(this.opEventPool.entrySet(), new Function1() { // from class: com.join.kotlin.module.hmcloud.viewmodel.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(HMCloudMainViewModel.emitKeyboardOpPool$lambda$20((Map.Entry) obj));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean emitKeyboardOpPool$lambda$20(Map.Entry it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        return !((Boolean) it2.getValue()).booleanValue();
    }

    private final void enqueueOpInput(HMInputOpData data) {
        appendCurrentTrackballState(data);
        this.opInputChannel.s(data);
    }

    public static /* synthetic */ void feedback$default(HMCloudMainViewModel hMCloudMainViewModel, Context context, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = hMCloudMainViewModel.gameId;
        }
        if ((i10 & 4) != 0) {
            str2 = hMCloudMainViewModel.cid;
        }
        hMCloudMainViewModel.feedback(context, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fillOpConfig(HMOpConfig opConfig) {
        opConfig.setLayoutWidth(this.layoutSize.getFirst());
        opConfig.setLayoutHeight(this.layoutSize.getSecond());
        opConfig.setDensity(Float.valueOf(this.context.getResources().getDisplayMetrics().density));
        opConfig.setPinchToZoom(this.pinchToZoom.getValue());
        opConfig.setKeyboardInput(this.keyboardInput.getValue());
        opConfig.setTouchMode(this.touchMode.getValue());
        opConfig.setMouseSensitivity(this.mouseSensitivity.getValue());
        opConfig.setAlpha(this.keyAlpha.getValue());
        opConfig.setVibrate(this.keyVibrate.getValue());
        opConfig.setHideKey(this.keyHide.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getConfigRoot() {
        return this.context.getFilesDir() + "/hmcloud/" + this.gameId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final File getCustomOpConfig$lambda$26(String str, String str2, int i10) {
        return new File(str, str2 + i10 + ".json");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getLastResolutionId$lambda$38(HMCloudMainViewModel hMCloudMainViewModel) {
        PictureSetting pictureSetting;
        String id2;
        List listReversed;
        Object next;
        List<PictureSetting> value = hMCloudMainViewModel.pictureSettingList.getValue();
        boolean z10 = true;
        if (value == null || (listReversed = CollectionsKt___CollectionsKt.reversed(value)) == null) {
            pictureSetting = null;
        } else {
            Iterator it2 = listReversed.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!(!((PictureSetting) next).getVip_require()));
            pictureSetting = (PictureSetting) next;
        }
        String id3 = pictureSetting != null ? pictureSetting.getId() : null;
        if (id3 != null && id3.length() != 0) {
            z10 = false;
        }
        return (z10 || (id2 = pictureSetting.getId()) == null) ? "3" : id2;
    }

    public static /* synthetic */ void guideNext$default(HMCloudMainViewModel hMCloudMainViewModel, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        hMCloudMainViewModel.guideNext(z10);
    }

    private final void invalidateGamepadEvent() {
        HMInputOpData hMInputOpData = new HMInputOpData();
        Iterator<Integer> it2 = this.gamepadEventPool.keySet().iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            int iIntValue = it2.next().intValue();
            if (!Intrinsics.areEqual(this.gamepadEventPool.get(Integer.valueOf(iIntValue)), Boolean.FALSE)) {
                i10 |= iIntValue;
            }
        }
        HMInputOpData.HMOneInputOPData hMOneInputOPData = new HMInputOpData.HMOneInputOPData();
        hMOneInputOPData.inputOp = HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpXinputButtons;
        hMOneInputOPData.value = i10;
        hMInputOpData.opListArray.add(hMOneInputOPData);
        enqueueOpInput(hMInputOpData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadEditKeys$lambda$12(HandleCfg handleCfg, HMCloudMainViewModel hMCloudMainViewModel, HMOpConfig hMOpConfig) {
        List<HMKeyItem> arrayList;
        HandleCfg cfg;
        if (hMOpConfig != null) {
            if (handleCfg.getFrom() == null && (cfg = hMOpConfig.getCfg()) != null) {
                cfg.setUrl(null);
            }
            hMCloudMainViewModel.setOpConfig(hMOpConfig);
            hMCloudMainViewModel.editOpConfig.postValue(hMOpConfig);
            MutableLiveData<List<HMKeyItem>> mutableLiveData = hMCloudMainViewModel.editKeys;
            List<HMKeyItem> keys = hMOpConfig.getKeys();
            if (keys == null || (arrayList = CollectionsKt___CollectionsKt.toMutableList((Collection) keys)) == null) {
                arrayList = new ArrayList<>();
            }
            mutableLiveData.postValue(arrayList);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadOpConfig(HandleCfg cfg, Function1<? super HMOpConfig, Unit> onResult) {
        launchOnUI(new C13141(cfg, this, onResult, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void loadOpConfig$default(HMCloudMainViewModel hMCloudMainViewModel, HandleCfg handleCfg, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        hMCloudMainViewModel.loadOpConfig(handleCfg, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadTemplateKeys$lambda$10(HMCloudMainViewModel hMCloudMainViewModel, Function1 function1, HMOpConfig hMOpConfig) {
        kotlinx.coroutines.j.f(ViewModelKt.getViewModelScope(hMCloudMainViewModel), null, null, new HMCloudMainViewModel$loadTemplateKeys$1$1(function1, hMOpConfig, null), 3, null);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void onSwitchResolution$default(HMCloudMainViewModel hMCloudMainViewModel, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        hMCloudMainViewModel.onSwitchResolution(str, str2);
    }

    private final void performGamepadKeyClick(String key, boolean pressed) {
        if (!Intrinsics.areEqual(key, HMKeyData.BtnLT.getKey()) && !Intrinsics.areEqual(key, HMKeyData.BtnRT.getKey())) {
            Object obj = this.gamepadMap.get(key);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            if (num != null) {
                this.gamepadEventPool.put(Integer.valueOf(num.intValue()), Boolean.valueOf(pressed));
                invalidateGamepadEvent();
                return;
            }
            return;
        }
        HMInputOpData hMInputOpData = new HMInputOpData();
        HMInputOpData.HMOneInputOPData hMOneInputOPData = new HMInputOpData.HMOneInputOPData();
        Object obj2 = this.gamepadMap.get(key);
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type com.haima.hmcp.beans.HMInputOpData.HMOneInputOPData_InputOP");
        hMOneInputOPData.inputOp = (HMInputOpData.HMOneInputOPData_InputOP) obj2;
        hMOneInputOPData.value = pressed ? 255 : 0;
        hMInputOpData.opListArray.add(hMOneInputOPData);
        enqueueOpInput(hMInputOpData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String readJsonFromUrl(String url) {
        if (url == null) {
            return "";
        }
        URL url2 = new URL(url);
        return new String(TextStreamsKt.readBytes(url2), Charsets.UTF_8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setOpConfig(HMOpConfig opConfig) {
        Boolean pinchToZoom = opConfig.getPinchToZoom();
        if (pinchToZoom != null) {
            this.pinchToZoom.postValue(Boolean.valueOf(pinchToZoom.booleanValue()));
        }
        Boolean keyboardInput = opConfig.getKeyboardInput();
        if (keyboardInput != null) {
            this.keyboardInput.postValue(Boolean.valueOf(keyboardInput.booleanValue()));
        }
        Integer touchMode = opConfig.getTouchMode();
        if (touchMode != null) {
            this.touchMode.postValue(Integer.valueOf(touchMode.intValue()));
        }
        Float mouseSensitivity = opConfig.getMouseSensitivity();
        if (mouseSensitivity != null) {
            this.mouseSensitivity.postValue(Float.valueOf(mouseSensitivity.floatValue()));
        }
        Float alpha = opConfig.getAlpha();
        if (alpha != null) {
            this.keyAlpha.postValue(Float.valueOf(alpha.floatValue()));
        }
        Boolean vibrate = opConfig.getVibrate();
        if (vibrate != null) {
            this.keyVibrate.postValue(Boolean.valueOf(vibrate.booleanValue()));
        }
        Boolean hideKey = opConfig.getHideKey();
        if (hideKey != null) {
            this.keyHide.postValue(Boolean.valueOf(hideKey.booleanValue()));
        }
    }

    private final Set<HMDpadDirection> trackballDirections(float x10, float y10) {
        if (x10 == 0.0f) {
            if (y10 == 0.0f) {
                return SetsKt__SetsKt.emptySet();
            }
        }
        float fAtan2 = (float) Math.atan2(y10, x10);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        double d10 = fAtan2;
        if (d10 >= -1.1780972450961724d && d10 < 1.1780972450961724d) {
            linkedHashSet.add(HMDpadDirection.Right);
        } else if ((d10 >= 1.9634954084936207d && d10 <= 3.141592653589793d) || (d10 >= -3.141592653589793d && d10 <= -1.9634954084936207d)) {
            linkedHashSet.add(HMDpadDirection.Left);
        }
        if (d10 >= 0.39269908169872414d && d10 < 2.748893571891069d) {
            linkedHashSet.add(HMDpadDirection.Up);
        } else if (d10 >= -2.748893571891069d && d10 < -0.39269908169872414d) {
            linkedHashSet.add(HMDpadDirection.Down);
        }
        return linkedHashSet;
    }

    public final void addCombineKey(@NotNull List<String> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        launchOnUI(new AnonymousClass1(keys, this, null));
    }

    public final void addKey(@NotNull String k10) {
        Intrinsics.checkNotNullParameter(k10, "k");
        launchOnUI(new C13061(k10, null));
    }

    public final long calcRemainTime() {
        Long value = this.playTime.getValue();
        long jLongValue = value != null ? value.longValue() : 0L;
        this.remainTime.postValue(Long.valueOf(jLongValue));
        return jLongValue;
    }

    public final void collectOpInputData(@NotNull Function1<? super HMInputOpData, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        kotlinx.coroutines.j.f(ViewModelKt.getViewModelScope(this), z0.c(), null, new C13071(callback, null), 2, null);
    }

    public final void deleteCustomOpConfig(@Nullable HandleCfg cfg, @NotNull Function1<? super Boolean, Unit> success) {
        Intrinsics.checkNotNullParameter(success, "success");
        if (cfg == null) {
            return;
        }
        launchOnUI(new AnonymousClass2(cfg, success, this, null));
    }

    public final boolean dispatchEvent(@Nullable Object obj) {
        HMInputDeviceManager hMInputDeviceManager;
        boolean zDispatchGenericMotionEvent;
        if (obj instanceof KeyEvent) {
            HMInputDeviceManager hMInputDeviceManager2 = this.inputDeviceManager;
            if (hMInputDeviceManager2 == null) {
                return false;
            }
            zDispatchGenericMotionEvent = hMInputDeviceManager2.dispatchKeyEvent((KeyEvent) obj);
        } else {
            if (!(obj instanceof MotionEvent) || (hMInputDeviceManager = this.inputDeviceManager) == null) {
                return false;
            }
            zDispatchGenericMotionEvent = hMInputDeviceManager.dispatchGenericMotionEvent((MotionEvent) obj);
        }
        return zDispatchGenericMotionEvent;
    }

    public final void editCustomOpConfig(@Nullable HandleCfg cfg) {
        launchOnUI(new C13081(cfg, this, null));
    }

    public final void feedback(@NotNull Context context, @NotNull String gameId, @Nullable String cid) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setObject("建议与反馈");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.join.mgps.rpc.h.f72397x);
        sb2.append("/static/20250908feedback/index.html?gameid=");
        sb2.append(gameId);
        sb2.append("&cid=");
        if (cid == null || cid.length() == 0) {
            cid = HmcpManager.getInstance().getCloudId();
        }
        sb2.append(cid);
        intentDateBean.setLink_type_val(sb2.toString());
        intentDateBean.setExt1("modGame");
        IntentUtil.getInstance().goShareWebActivityNewTask(context, context.getPackageName(), intentDateBean);
    }

    @Nullable
    public final ResolutionInfo findResolutionById(@NotNull String id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        List<ResolutionInfo> value = this.resolutionList.getValue();
        Object obj = null;
        if (value == null) {
            return null;
        }
        for (Object obj2 : value) {
            if (Intrinsics.areEqual(((ResolutionInfo) obj2).f33828id, id2)) {
                obj = obj2;
                break;
            }
        }
        return (ResolutionInfo) obj;
    }

    @NotNull
    public final String formatRemainTime(long seconds) {
        String string;
        String string2;
        if (seconds <= 0) {
            return "0秒";
        }
        long j10 = 3600;
        long j11 = seconds / j10;
        long j12 = 60;
        long j13 = (seconds % j10) / j12;
        long j14 = seconds % j12;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Object[] objArr = new Object[3];
        String string3 = "";
        if (j11 > 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(j11);
            sb2.append((char) 26102);
            string = sb2.toString();
        } else {
            string = "";
        }
        objArr[0] = string;
        if (j13 > 0) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(j13);
            sb3.append((char) 20998);
            string2 = sb3.toString();
        } else {
            string2 = "";
        }
        objArr[1] = string2;
        if (j14 > 0) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(j14);
            sb4.append((char) 31186);
            string3 = sb4.toString();
        }
        objArr[2] = string3;
        String str = String.format("%s%s%s", Arrays.copyOf(objArr, 3));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        int length = str.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) str.charAt(!z10 ? i10 : length), 32) <= 0;
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
        return str.subSequence(i10, length + 1).toString();
    }

    @NotNull
    public final String formatSignTime(long seconds) {
        String str;
        if (seconds <= 0) {
            return "0秒";
        }
        long j10 = 60;
        long j11 = seconds / j10;
        long j12 = seconds % j10;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Object[] objArr = new Object[2];
        String string = "";
        if (j11 > 0) {
            str = j11 + "分钟";
        } else {
            str = "";
        }
        objArr[0] = str;
        if (j12 > 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(j12);
            sb2.append((char) 31186);
            string = sb2.toString();
        }
        objArr[1] = string;
        String str2 = String.format("%s%s", Arrays.copyOf(objArr, 2));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        int length = str2.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) str2.charAt(!z10 ? i10 : length), 32) <= 0;
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
        return str2.subSequence(i10, length + 1).toString();
    }

    @NotNull
    public final MutableLiveData<Integer> getBrightness() {
        return this.brightness;
    }

    @NotNull
    public final String getCid() {
        return this.cid;
    }

    @Nullable
    /* JADX INFO: renamed from: getCloudGamingCfgInfo, reason: from getter */
    public final CloudGamingCfgInfo getGameCfgInfo() {
        return this.gameCfgInfo;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final MutableLiveData<HandleCfg> getCurrentKeyType() {
        return this.currentKeyType;
    }

    @NotNull
    public final MutableLiveData<List<HMKeyItem>> getCurrentKeys() {
        return this.currentKeys;
    }

    @NotNull
    public final MutableLiveData<HMOpConfig> getCurrentOpConfig() {
        return this.currentOpConfig;
    }

    @NotNull
    public final MutableLiveData<ResolutionInfo> getCurrentResolution() {
        return this.currentResolution;
    }

    @NotNull
    public final List<HMOpConfig> getCustomOpConfig() {
        final String str = getConfigRoot() + "/op_config/custom";
        final String str2 = "op_cfg_custom_";
        Function1 function1 = new Function1() { // from class: com.join.kotlin.module.hmcloud.viewmodel.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMainViewModel.getCustomOpConfig$lambda$26(str, str2, ((Integer) obj).intValue());
            }
        };
        ArrayList arrayList = new ArrayList();
        int i10 = this.maxOpConfigSize;
        for (int i11 = 0; i11 < i10; i11++) {
            File file = (File) function1.invoke(Integer.valueOf(i11));
            if (file.exists()) {
                try {
                    HMOpConfig hMOpConfig = (HMOpConfig) JsonMapper.getInstance().fromJson(FilesKt__FileReadWriteKt.readText$default(file, null, 1, null), HMOpConfig.class);
                    if (hMOpConfig != null) {
                        arrayList.add(hMOpConfig);
                    }
                } catch (Exception unused) {
                }
            }
        }
        this.customOpConfigList.clear();
        this.customOpConfigList.addAll(arrayList);
        return arrayList;
    }

    @NotNull
    public final MutableLiveData<List<HMKeyItem>> getEditKeys() {
        return this.editKeys;
    }

    @NotNull
    public final MutableLiveData<HMOpConfig> getEditOpConfig() {
        return this.editOpConfig;
    }

    public final void getGameCfgInfoBySrv() {
        launchOnUI(new C13091(null));
    }

    @NotNull
    public final String getGameId() {
        return this.gameId;
    }

    @NotNull
    public final MutableLiveData<String> getGameRatio() {
        return this.gameRatio;
    }

    @Nullable
    public final HMKeyItem getGuideKeyPosition() {
        GameButtonTips game_button_tips;
        String default_position;
        CloudGamingCfgInfo cloudGamingCfgInfo = this.gameCfgInfo;
        if (cloudGamingCfgInfo == null || (game_button_tips = cloudGamingCfgInfo.getGame_button_tips()) == null || (default_position = game_button_tips.getDefault_position()) == null) {
            return null;
        }
        if (default_position.length() == 0) {
            return null;
        }
        return (HMKeyItem) JsonMapper.getInstance().fromJson(default_position, HMKeyItem.class);
    }

    @NotNull
    public final MutableLiveData<GuideState> getGuideState() {
        return this.guideState;
    }

    @NotNull
    public final MutableLiveData<Boolean> getHandleSupport() {
        return this.handleSupport;
    }

    @NotNull
    public final MutableLiveData<ControllerManager.c> getInputDevice() {
        return this.inputDevice;
    }

    @NotNull
    public final MutableLiveData<Integer> getInputDeviceSize() {
        return this.inputDeviceSize;
    }

    @NotNull
    public final kotlinx.coroutines.flow.i<BaseEvent> getInputEventData() {
        return this.inputEventData;
    }

    @NotNull
    public final MutableLiveData<Float> getKeyAlpha() {
        return this.keyAlpha;
    }

    @NotNull
    public final MutableLiveData<Boolean> getKeyHide() {
        return this.keyHide;
    }

    @NotNull
    public final MutableLiveData<List<HandleCfg>> getKeyTypeList() {
        return this.keyTypeList;
    }

    @NotNull
    public final MutableLiveData<Boolean> getKeyVibrate() {
        return this.keyVibrate;
    }

    @NotNull
    public final MutableLiveData<Boolean> getKeyboardInput() {
        return this.keyboardInput;
    }

    @NotNull
    public final String getLastResolutionId() {
        String str;
        String str2 = (String) new Function0() { // from class: com.join.kotlin.module.hmcloud.viewmodel.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HMCloudMainViewModel.getLastResolutionId$lambda$38(this.f48839b);
            }
        }.invoke();
        ResolutionInfo resolutionInfo = this.lastResolutionInfo;
        if (resolutionInfo == null || (str = resolutionInfo.f33828id) == null) {
            str = str2;
        }
        if (isCloudVip()) {
            return str;
        }
        return Integer.parseInt(str) <= Integer.parseInt(str2) ? str : str2;
    }

    public final int getMaxOpConfigSize() {
        return this.maxOpConfigSize;
    }

    @NotNull
    public final MutableLiveData<HMMenuAction> getMenuAction() {
        return this.menuAction;
    }

    @NotNull
    public final MutableLiveData<Float> getMouseSensitivity() {
        return this.mouseSensitivity;
    }

    @NotNull
    public final MutableLiveData<Boolean> getMute() {
        return this.mute;
    }

    @NotNull
    public final MutableLiveData<List<PictureSetting>> getPictureSettingList() {
        return this.pictureSettingList;
    }

    @NotNull
    public final MutableLiveData<Boolean> getPinchToZoom() {
        return this.pinchToZoom;
    }

    @NotNull
    public final MutableLiveData<Long> getPlayTime() {
        return this.playTime;
    }

    @NotNull
    public final MutableLiveData<MessageCloudGamingPlaytimeResponse.PlaytimeSummary> getPlaytimeSummary() {
        return this.playtimeSummary;
    }

    @NotNull
    public final MutableLiveData<Long> getRemainTime() {
        return this.remainTime;
    }

    @NotNull
    public final MutableLiveData<List<ResolutionInfo>> getResolutionList() {
        return this.resolutionList;
    }

    public final void getScreenBrightness(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.brightness.getValue() != null) {
            return;
        }
        launchOnUI(new C13101(context, this, null));
    }

    @NotNull
    public final MutableLiveData<Boolean> getShowKeyTips() {
        return this.showKeyTips;
    }

    @NotNull
    public final MutableLiveData<Long> getStartPlayTime() {
        return this.startPlayTime;
    }

    @NotNull
    public final MutableLiveData<List<HandleCfg>> getTemplateList() {
        return this.templateList;
    }

    @NotNull
    public final MutableLiveData<String> getToast() {
        return this.toast;
    }

    @NotNull
    public final MutableLiveData<Integer> getTouchMode() {
        return this.touchMode;
    }

    public final void guideNext(boolean done) {
        Integer next;
        if (done) {
            this.guideState.postValue(GuideState.Done.INSTANCE);
            return;
        }
        GuideState value = this.guideState.getValue();
        if (!(value instanceof GuideState.Page) || (next = ((GuideState.Page) value).getNext()) == null) {
            return;
        }
        int iIntValue = next.intValue();
        this.guideState.postValue(new GuideState.Page(iIntValue, Integer.valueOf(iIntValue + 1)));
    }

    public final boolean isAddKeyType(@NotNull HandleCfg item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (Intrinsics.areEqual(item.getName(), "添加方案")) {
            Integer source = item.getSource();
            int value = HandleCfgSource.None.getValue();
            if (source != null && source.intValue() == value) {
                return true;
            }
        }
        return false;
    }

    public final boolean isCloudVip() {
        return com.join.mgps.Util.b.pivc(AccountUtil_.getInstance_(this.context).getAccountData());
    }

    @NotNull
    public final MutableLiveData<Boolean> isHmCloudPc() {
        return this.isHmCloudPc;
    }

    public final boolean isKeyboardEnable() {
        Boolean value = this.isHmCloudPc.getValue();
        Boolean bool = Boolean.TRUE;
        return Intrinsics.areEqual(value, bool) && Intrinsics.areEqual(this.keyboardInput.getValue(), bool);
    }

    @NotNull
    public final MutableLiveData<Boolean> isLatencyOn() {
        return this.isLatencyOn;
    }

    public final boolean isLowResolution(@Nullable String resolution) {
        if (resolution == null || resolution.length() == 0) {
            return true;
        }
        List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) resolution, new String[]{"x"}, false, 0, 6, (Object) null);
        if (listSplit$default.size() == 2) {
            if (!(((CharSequence) listSplit$default.get(0)).length() == 0)) {
                return (((CharSequence) listSplit$default.get(1)).length() == 0) || Math.max(Integer.parseInt((String) listSplit$default.get(0)), Integer.parseInt((String) listSplit$default.get(1))) < 1080;
            }
        }
        return true;
    }

    public final void loadEditKeys(@NotNull final HandleCfg cfg) {
        Intrinsics.checkNotNullParameter(cfg, "cfg");
        loadOpConfig(cfg, new Function1() { // from class: com.join.kotlin.module.hmcloud.viewmodel.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMainViewModel.loadEditKeys$lambda$12(cfg, this, (HMOpConfig) obj);
            }
        });
    }

    public final void loadGameLocalConfig() {
        launchOnUI(new C13111(null));
    }

    public final void loadLastCommonConfig() {
        launchOnUI(new C13121(null));
    }

    public final void loadLastOpConfig() {
        launchOnUI(new C13131(null));
    }

    public final void loadTemplate(int type) {
        launchOnUI(new C13151(type, null));
    }

    public final void loadTemplateKeys(@NotNull HandleCfg cfg, @NotNull final Function1<? super HMOpConfig, Unit> callback) {
        Intrinsics.checkNotNullParameter(cfg, "cfg");
        Intrinsics.checkNotNullParameter(callback, "callback");
        loadOpConfig(cfg, new Function1() { // from class: com.join.kotlin.module.hmcloud.viewmodel.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMainViewModel.loadTemplateKeys$lambda$10(this.f48837b, callback, (HMOpConfig) obj);
            }
        });
    }

    public final void onSwitchResolution(@NotNull String id2, @Nullable String name) {
        Intrinsics.checkNotNullParameter(id2, "id");
        launchOnUI(new C13161(id2, name, null));
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0087  */
    public final void onSwitchResolutionResult(@Nullable String curId) {
        Object obj;
        Object next;
        boolean z10;
        if (curId == null) {
            return;
        }
        List<ResolutionInfo> value = this.resolutionList.getValue();
        if (value == null) {
            value = CollectionsKt__CollectionsKt.emptyList();
        }
        if (value.isEmpty()) {
            return;
        }
        Iterator<T> it2 = value.iterator();
        do {
            obj = null;
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!Intrinsics.areEqual(((ResolutionInfo) next).f33828id, curId));
        ResolutionInfo resolutionInfo = (ResolutionInfo) next;
        if (resolutionInfo == null) {
            return;
        }
        this.currentResolution.postValue(resolutionInfo);
        String name = resolutionInfo.name;
        List<PictureSetting> value2 = this.pictureSettingList.getValue();
        if (value2 != null) {
            for (Object obj2 : value2) {
                PictureSetting pictureSetting = (PictureSetting) obj2;
                if (!Intrinsics.areEqual(pictureSetting.getId(), curId)) {
                    if (Intrinsics.areEqual(resolutionInfo.resolution, pictureSetting.getResolution())) {
                        int i10 = resolutionInfo.frameRate;
                        Integer frame_rate = pictureSetting.getFrame_rate();
                        z10 = frame_rate != null && i10 == frame_rate.intValue();
                    }
                }
                if (z10) {
                    obj = obj2;
                    break;
                }
            }
            PictureSetting pictureSetting2 = (PictureSetting) obj;
            if (pictureSetting2 != null) {
                name = pictureSetting2.getShow_frame_mark() ? pictureSetting2.getName() + '-' + pictureSetting2.getFrame_rate() + (char) 24103 : pictureSetting2.getName();
            }
        }
        this.toast.postValue("分辨率切换成功，已切换至" + name);
    }

    public final void performClick(@NotNull String key, boolean pressed) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.gamepadMap.containsKey(key)) {
            performGamepadKeyClick(key, pressed);
        } else if (pressed || this.opEventPool.containsKey(key)) {
            this.opEventPool.put(key, Boolean.valueOf(pressed));
            emitKeyboardOpPool();
        }
    }

    public final void performDirection(@NotNull String name, @NotNull List<? extends HMDpadDirection> dirs) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(dirs, "dirs");
        if (!Intrinsics.areEqual(name, HMKeyData.JoyDpad.getKey()) && !Intrinsics.areEqual(name, HMKeyData.Dpad.getKey())) {
            if (Intrinsics.areEqual(name, HMKeyData.JoyWasd.getKey())) {
                applyDirectionKeys(MapsKt__MapsKt.mapOf(TuplesKt.to(HMDpadDirection.Up, HMKeyData.KeyW.getKey()), TuplesKt.to(HMDpadDirection.Down, HMKeyData.KeyS.getKey()), TuplesKt.to(HMDpadDirection.Left, HMKeyData.KeyA.getKey()), TuplesKt.to(HMDpadDirection.Right, HMKeyData.KeyD.getKey())), dirs);
                return;
            } else {
                if (Intrinsics.areEqual(name, HMKeyData.JoyArrow.getKey())) {
                    applyDirectionKeys(MapsKt__MapsKt.mapOf(TuplesKt.to(HMDpadDirection.Up, HMKeyData.VkUp.getKey()), TuplesKt.to(HMDpadDirection.Down, HMKeyData.VkDown.getKey()), TuplesKt.to(HMDpadDirection.Left, HMKeyData.VkLeft.getKey()), TuplesKt.to(HMDpadDirection.Right, HMKeyData.VkRight.getKey())), dirs);
                    return;
                }
                return;
            }
        }
        for (HMDpadDirection hMDpadDirection : HMDpadDirection.getEntries()) {
            Integer num = this.directionMap.get(hMDpadDirection);
            if (num != null) {
                int iIntValue = num.intValue();
                if (dirs.contains(hMDpadDirection)) {
                    this.gamepadEventPool.put(Integer.valueOf(iIntValue), Boolean.TRUE);
                } else if (this.gamepadEventPool.containsKey(Integer.valueOf(iIntValue))) {
                    this.gamepadEventPool.put(Integer.valueOf(iIntValue), Boolean.FALSE);
                }
            }
        }
        invalidateGamepadEvent();
    }

    public final void performInputEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.inputEventMapper.performInputEvent(event);
    }

    public final void performTrackball(@NotNull String key, float x10, float y10) {
        Intrinsics.checkNotNullParameter(key, "key");
        Set<HMDpadDirection> setTrackballDirections = trackballDirections(x10, y10);
        if (Intrinsics.areEqual(setTrackballDirections, this.trackballLastDirs.get(key))) {
            return;
        }
        this.trackballLastDirs.put(key, setTrackballDirections);
        Pair<Integer, Integer> pairDirsToStickValue = dirsToStickValue(setTrackballDirections);
        int iIntValue = pairDirsToStickValue.component1().intValue();
        int iIntValue2 = pairDirsToStickValue.component2().intValue();
        this.trackballAxis.put(key, TuplesKt.to(Integer.valueOf(iIntValue), Integer.valueOf(iIntValue2)));
        HMInputOpData hMInputOpData = new HMInputOpData();
        if (Intrinsics.areEqual(key, HMKeyData.JoyL.getKey())) {
            HMInputOpData.HMOneInputOPData hMOneInputOPData = new HMInputOpData.HMOneInputOPData();
            hMOneInputOPData.inputOp = HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpXinputThumbLx;
            hMOneInputOPData.value = iIntValue;
            hMInputOpData.opListArray.add(hMOneInputOPData);
            HMInputOpData.HMOneInputOPData hMOneInputOPData2 = new HMInputOpData.HMOneInputOPData();
            hMOneInputOPData2.inputOp = HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpXinputThumbLy;
            hMOneInputOPData2.value = iIntValue2;
            hMInputOpData.opListArray.add(hMOneInputOPData2);
        } else {
            if (!Intrinsics.areEqual(key, HMKeyData.JoyR.getKey())) {
                return;
            }
            HMInputOpData.HMOneInputOPData hMOneInputOPData3 = new HMInputOpData.HMOneInputOPData();
            hMOneInputOPData3.inputOp = HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpXinputThumbRx;
            hMOneInputOPData3.value = iIntValue;
            hMInputOpData.opListArray.add(hMOneInputOPData3);
            HMInputOpData.HMOneInputOPData hMOneInputOPData4 = new HMInputOpData.HMOneInputOPData();
            hMOneInputOPData4.inputOp = HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpXinputThumbRy;
            hMOneInputOPData4.value = iIntValue2;
            hMInputOpData.opListArray.add(hMOneInputOPData4);
        }
        enqueueOpInput(hMInputOpData);
    }

    public final void refreshKeyboardTypeList() {
        launchOnUI(new C13171(null));
    }

    public final void refreshKeys() {
        launchOnUI(new C13181(null));
    }

    public final void requestPlaytimeSummary() {
        launchOnUI(new C13191(null));
    }

    public final void resetEdit(@NotNull HandleCfg cfg) {
        Intrinsics.checkNotNullParameter(cfg, "cfg");
        loadEditKeys(cfg);
    }

    public final void saveCustomOpConfig(@NotNull String name, int cfgType, @Nullable String path, @Nullable Integer width, @Nullable Integer height) {
        Intrinsics.checkNotNullParameter(name, "name");
        launchOnUI(new C13201(path, name, cfgType, width, height, null));
    }

    public final void saveLastCommonConfig() {
        launchOnUI(new C13211(null));
    }

    public final void saveLastOpConfig() {
        launchOnUI(new C13221(null));
    }

    public final void setCid(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.cid = str;
    }

    public final void setCurrentKeys(@NotNull MutableLiveData<List<HMKeyItem>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.currentKeys = mutableLiveData;
    }

    public final void setCurrentOpConfig(@NotNull MutableLiveData<HMOpConfig> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.currentOpConfig = mutableLiveData;
    }

    public final void setEditKeys(@NotNull MutableLiveData<List<HMKeyItem>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.editKeys = mutableLiveData;
    }

    public final void setEditOpConfig(@NotNull MutableLiveData<HMOpConfig> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.editOpConfig = mutableLiveData;
    }

    public final void setGameId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gameId = str;
    }

    public final void setGuideState(@NotNull MutableLiveData<GuideState> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.guideState = mutableLiveData;
    }

    public final void setInputDevice(@NotNull MutableLiveData<ControllerManager.c> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.inputDevice = mutableLiveData;
    }

    public final void setInputDeviceSize(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.inputDeviceSize = mutableLiveData;
    }

    public final void setOpLayoutSize(int width, int height) {
        launchOnUI(new C13231(width, height, null));
    }

    public final <T extends ViewGroup.LayoutParams> void setRatio(@NotNull T lp) {
        Intrinsics.checkNotNullParameter(lp, "lp");
        String value = this.gameRatio.getValue();
        if (TextUtils.isEmpty(value)) {
            ((ViewGroup.LayoutParams) lp).width = -1;
            ((ViewGroup.LayoutParams) lp).height = -1;
        } else if (Intrinsics.areEqual(value, "16:9")) {
            ((ViewGroup.LayoutParams) lp).width = (int) (this.context.getResources().getDisplayMetrics().heightPixels * 1.7777778f);
            ((ViewGroup.LayoutParams) lp).height = -1;
        }
    }

    public final void setShowKeyTips(@NotNull MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showKeyTips = mutableLiveData;
    }

    public final void setTouchMode(int mode) {
        this.touchMode.postValue(Integer.valueOf(mode));
    }

    public final void startInputMonitor() {
        if (this.inputDeviceManager == null) {
            this.inputDeviceManager = new HMInputDeviceManager();
            Unit unit = Unit.INSTANCE;
        }
        HMInputDeviceManager hMInputDeviceManager = this.inputDeviceManager;
        if (hMInputDeviceManager != null) {
            hMInputDeviceManager.setOnInputDeviceListener(new HMInputDeviceManager.OnInputDeviceListener() { // from class: com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel.startInputMonitor.2
                public final void onInputDeviceChanged() {
                    List<ControllerManager.c> inputDevices;
                    MutableLiveData<Integer> inputDeviceSize = HMCloudMainViewModel.this.getInputDeviceSize();
                    HMInputDeviceManager hMInputDeviceManager2 = HMCloudMainViewModel.this.inputDeviceManager;
                    inputDeviceSize.postValue(Integer.valueOf(hMInputDeviceManager2 != null ? hMInputDeviceManager2.getInputDeviceCount() : 0));
                    MutableLiveData<ControllerManager.c> inputDevice = HMCloudMainViewModel.this.getInputDevice();
                    HMInputDeviceManager hMInputDeviceManager3 = HMCloudMainViewModel.this.inputDeviceManager;
                    inputDevice.postValue((hMInputDeviceManager3 == null || (inputDevices = hMInputDeviceManager3.getInputDevices()) == null) ? null : (ControllerManager.c) CollectionsKt___CollectionsKt.firstOrNull((List) inputDevices));
                }

                @Override // com.join.kotlin.module.hmcloud.device.HMInputDeviceManager.OnInputDeviceListener
                public void onInputDeviceConnected() {
                    onInputDeviceChanged();
                }

                @Override // com.join.kotlin.module.hmcloud.device.HMInputDeviceManager.OnInputDeviceListener
                public void onInputDeviceDisconnected() {
                    onInputDeviceChanged();
                }

                @Override // com.join.kotlin.module.hmcloud.device.HMInputDeviceManager.OnInputDeviceListener
                public void onKeyEvent(int keyCode, PadKeyEvent padKeyEvent) {
                    HMCloudMainViewModel.this.getInputEventData().d(padKeyEvent);
                }

                @Override // com.join.kotlin.module.hmcloud.device.HMInputDeviceManager.OnInputDeviceListener
                public void onStickEvent(PadMotionEvent padMotionEvent) {
                    HMCloudMainViewModel.this.getInputEventData().d(padMotionEvent);
                }
            });
        }
        HMInputDeviceManager hMInputDeviceManager2 = this.inputDeviceManager;
        if (hMInputDeviceManager2 != null) {
            hMInputDeviceManager2.startMonitor(this.context);
        }
    }

    public final void startVibrate() {
        launchOnUI(new C13251(null));
    }

    public final void stopInputMonitor() {
        HMInputDeviceManager hMInputDeviceManager = this.inputDeviceManager;
        if (hMInputDeviceManager != null) {
            hMInputDeviceManager.stopMonitor();
        }
    }

    public final void switchOpConfig(@Nullable HandleCfg cfg) {
        this.editOpConfig.postValue(null);
        if (cfg == null) {
            this.currentKeyType.postValue(null);
            this.currentOpConfig.postValue(null);
            this.currentKeys.postValue(CollectionsKt__CollectionsKt.emptyList());
        } else {
            if (isAddKeyType(cfg)) {
                return;
            }
            launchOnUI(new C13261(cfg, null));
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00ef  */
    public final void updateResolutionInfo() {
        List<PictureSetting> picture_setting;
        ResolutionInfo resolutionInfo;
        Object next;
        boolean z10;
        if (this.resolutionList.getValue() == null) {
            return;
        }
        List<PictureSetting> listEmptyList = null;
        if (this.gameCfgInfo == null) {
            List<ResolutionInfo> value = this.resolutionList.getValue();
            if (value != null) {
                List<ResolutionInfo> list = value;
                listEmptyList = new ArrayList<>(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                for (ResolutionInfo resolutionInfo2 : list) {
                    boolean zIsLowResolution = isLowResolution(resolutionInfo2.resolution);
                    PictureSetting pictureSetting = new PictureSetting();
                    pictureSetting.setName(resolutionInfo2.name);
                    pictureSetting.setResolution(resolutionInfo2.resolution);
                    pictureSetting.setFrame_rate(Integer.valueOf(resolutionInfo2.frameRate));
                    pictureSetting.setId(resolutionInfo2.f33828id);
                    pictureSetting.setShow_frame_mark(!zIsLowResolution);
                    pictureSetting.setVip_require(!zIsLowResolution && resolutionInfo2.frameRate > 30);
                    listEmptyList.add(pictureSetting);
                }
            }
            MutableLiveData<List<PictureSetting>> mutableLiveData = this.pictureSettingList;
            if (listEmptyList == null) {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            mutableLiveData.postValue(listEmptyList);
            getGameCfgInfoBySrv();
            return;
        }
        ArrayList arrayList = new ArrayList();
        CloudGamingCfgInfo cloudGamingCfgInfo = this.gameCfgInfo;
        if (cloudGamingCfgInfo != null && (picture_setting = cloudGamingCfgInfo.getPicture_setting()) != null) {
            for (PictureSetting pictureSetting2 : picture_setting) {
                pictureSetting2.setResolution(StringsKt__StringsJVMKt.replace$default(pictureSetting2.getResolution(), WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD, "x", false, 4, (Object) null));
                List<ResolutionInfo> value2 = this.resolutionList.getValue();
                if (value2 != null) {
                    Iterator<T> it2 = value2.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                        ResolutionInfo resolutionInfo3 = (ResolutionInfo) next;
                        if (Intrinsics.areEqual(pictureSetting2.getResolution(), resolutionInfo3.resolution)) {
                            Integer frame_rate = pictureSetting2.getFrame_rate();
                            int i10 = resolutionInfo3.frameRate;
                            if (frame_rate != null && frame_rate.intValue() == i10) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                        } else {
                            z10 = false;
                        }
                    } while (!z10);
                    resolutionInfo = (ResolutionInfo) next;
                } else {
                    resolutionInfo = null;
                }
                if (resolutionInfo != null) {
                    PictureSetting pictureSetting3 = new PictureSetting();
                    pictureSetting3.setName(pictureSetting2.getName());
                    pictureSetting3.setResolution(pictureSetting2.getResolution());
                    pictureSetting3.setFrame_rate(pictureSetting2.getFrame_rate());
                    pictureSetting3.setId(resolutionInfo.f33828id);
                    pictureSetting3.setVip_require(pictureSetting2.getVip_require());
                    pictureSetting3.setShow_frame_mark(pictureSetting2.getShow_frame_mark());
                    arrayList.add(pictureSetting3);
                }
            }
        }
        this.pictureSettingList.postValue(arrayList);
    }

    public final boolean useInputDevice() {
        Integer value = this.inputDeviceSize.getValue();
        return (value != null ? value.intValue() : 0) > 0 && Intrinsics.areEqual(this.handleSupport.getValue(), Boolean.TRUE);
    }

    @NotNull
    public final Spanned formatSignTime(long seconds, boolean isNewMember) {
        String str;
        if (!isNewMember) {
            String string = this.context.getString(R.string.hm_sign_tip);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string, "免费时长", 0, false, 6, (Object) null);
            SpannableString spannableString = new SpannableString(string);
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#ffFF6C07")), iIndexOf$default, iIndexOf$default + 4, 33);
            return spannableString;
        }
        long j10 = seconds / ((long) 60);
        if (j10 > 0) {
            str = j10 + "分钟";
        } else {
            str = "";
        }
        String str2 = str;
        String string2 = this.context.getString(R.string.hm_sign_new_tip, str2);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        if (!(str2.length() == 0)) {
            int iIndexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) string2, str2, 0, false, 6, (Object) null);
            int length = String.valueOf(j10).length() + iIndexOf$default2;
            SpannableString spannableString2 = new SpannableString(string2);
            int color = Color.parseColor("#ffFF6C07");
            spannableString2.setSpan(new ForegroundColorSpan(color), iIndexOf$default2, length, 33);
            ColorStateList.valueOf(color);
            spannableString2.setSpan(new TextAppearanceSpan(null, 0, (int) this.context.getResources().getDimension(R.dimen.wdp36), ColorStateList.valueOf(color), null), iIndexOf$default2, length, 33);
            return spannableString2;
        }
        return new SpannableString(string2);
    }
}
