package com.zyyoona7.wheel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.media.AudioManager;
import android.os.SystemClock;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.IntRange;
import androidx.annotation.RawRes;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.kuaishou.weapon.p0.bo;
import com.kuaishou.weapon.p0.t;
import com.sdk.base.module.manager.SDKManager;
import com.umeng.analytics.pro.bm;
import com.xinzhu.overmind.server.os.f;
import io.netty.handler.ssl.ApplicationProtocolNames;
import java.util.HashMap;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.TypeCastException;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000¬\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\bF\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b4\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\r\n\u0002\b6\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0016\u0018\u0000 \u0082\u00042\u00020\u00012\u00020\u00022\u00020\u0003:\f\u0085\u0001\u0083\u0004\u0084\u0004\u0085\u0004\u0086\u0004ê\u0001B*\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\t\b\u0002\u0010ÿ\u0003\u001a\u00020\n¢\u0006\u0006\b\u0080\u0004\u0010\u0081\u0004J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\bH\u0002J\b\u0010\u000f\u001a\u00020\bH\u0002J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\nH\u0002J\b\u0010\u0015\u001a\u00020\bH\u0002J\u0010\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\b\u0010\u0019\u001a\u00020\bH\u0002J\b\u0010\u001a\u001a\u00020\bH\u0002J\b\u0010\u001b\u001a\u00020\bH\u0002J\u0010\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0010H\u0002J\b\u0010\u001e\u001a\u00020\nH\u0002J\b\u0010\u001f\u001a\u00020\bH\u0002J\b\u0010 \u001a\u00020\bH\u0002J\b\u0010!\u001a\u00020\bH\u0002J\b\u0010\"\u001a\u00020\bH\u0002J\b\u0010#\u001a\u00020\bH\u0002J\b\u0010$\u001a\u00020\bH\u0002J\u0014\u0010'\u001a\u00020\n2\n\u0010&\u001a\u0006\u0012\u0002\b\u00030%H\u0002J\u0014\u0010(\u001a\u00020\n2\n\u0010&\u001a\u0006\u0012\u0002\b\u00030%H\u0002J\b\u0010)\u001a\u00020\bH\u0002J\b\u0010*\u001a\u00020\bH\u0002J\u0010\u0010-\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002J\u0010\u0010.\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002J\u0010\u0010/\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002J\u0010\u00100\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002J\u0010\u00101\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002J\u0012\u00103\u001a\u00020\u00102\b\u00102\u001a\u0004\u0018\u00010\u0010H\u0002J(\u00107\u001a\u00020\b2\u0006\u0010,\u001a\u00020+2\u0006\u00104\u001a\u00020\n2\u0006\u00105\u001a\u00020\n2\u0006\u00106\u001a\u00020\nH\u0002J8\u0010=\u001a\u00020\b2\u0006\u0010,\u001a\u00020+2\u0006\u00108\u001a\u00020\u00102\u0006\u00109\u001a\u00020\n2\u0006\u0010:\u001a\u00020\n2\u0006\u0010;\u001a\u00020\n2\u0006\u0010<\u001a\u00020\nH\u0002J(\u0010>\u001a\u00020\b2\u0006\u0010,\u001a\u00020+2\u0006\u00104\u001a\u00020\n2\u0006\u00105\u001a\u00020\n2\u0006\u00106\u001a\u00020\nH\u0002JH\u0010B\u001a\u00020\b2\u0006\u0010,\u001a\u00020+2\u0006\u00108\u001a\u00020\u00102\u0006\u00109\u001a\u00020\n2\u0006\u0010:\u001a\u00020\n2\u0006\u0010?\u001a\u00020\u00132\u0006\u0010@\u001a\u00020\u00132\u0006\u0010A\u001a\u00020\u00132\u0006\u0010<\u001a\u00020\nH\u0002J8\u0010C\u001a\u00020\b2\u0006\u0010,\u001a\u00020+2\u0006\u00108\u001a\u00020\u00102\u0006\u0010?\u001a\u00020\u00132\u0006\u0010@\u001a\u00020\u00132\u0006\u0010A\u001a\u00020\u00132\u0006\u0010<\u001a\u00020\nH\u0002J\u0010\u0010D\u001a\u00020\n2\u0006\u00104\u001a\u00020\nH\u0002J\u0010\u0010G\u001a\u00020\n2\u0006\u0010F\u001a\u00020EH\u0002J\b\u0010H\u001a\u00020\bH\u0002J\b\u0010I\u001a\u00020\bH\u0002J\b\u0010J\u001a\u00020\bH\u0002J\b\u0010K\u001a\u00020\bH\u0002J\b\u0010L\u001a\u00020\bH\u0002J\u0010\u0010O\u001a\u00020\b2\u0006\u0010N\u001a\u00020MH\u0002J\u0010\u0010Q\u001a\u00020\b2\u0006\u0010P\u001a\u00020\u0016H\u0002J\u0010\u0010S\u001a\u00020\b2\u0006\u0010R\u001a\u00020\nH\u0002J\u0010\u0010U\u001a\u00020\b2\u0006\u0010T\u001a\u00020\nH\u0002J\b\u0010V\u001a\u00020\bH\u0002J\b\u0010W\u001a\u00020\u0016H\u0002J\b\u0010X\u001a\u00020\bH\u0002J\b\u0010Y\u001a\u00020\bH\u0002J\b\u0010Z\u001a\u00020\bH\u0002J\u0014\u0010[\u001a\u00020\u00162\n\u0010&\u001a\u0006\u0012\u0002\b\u00030%H\u0002J\u0010\u0010]\u001a\u00020\n2\u0006\u0010\\\u001a\u00020\nH\u0002J\u0018\u0010`\u001a\u00020\n2\u0006\u0010^\u001a\u00020\n2\u0006\u0010_\u001a\u00020\nH\u0002J\u0010\u0010b\u001a\u00020\n2\u0006\u0010a\u001a\u00020\nH\u0002J\b\u0010c\u001a\u00020\nH\u0002J\u0010\u0010d\u001a\u00020\u00162\u0006\u0010\\\u001a\u00020\nH\u0002J\u0010\u0010e\u001a\u00020\n2\u0006\u0010\\\u001a\u00020\nH\u0002J\b\u0010f\u001a\u00020\nH\u0002J\b\u0010g\u001a\u00020\bH\u0002J\u0010\u0010i\u001a\u00020\b2\u0006\u0010h\u001a\u00020\u0016H\u0002J\b\u0010j\u001a\u00020\bH\u0002J\b\u0010k\u001a\u00020\bH\u0002J\b\u0010l\u001a\u00020\bH\u0002J\b\u0010m\u001a\u00020\bH\u0002J\b\u0010n\u001a\u00020\bH\u0002J\b\u0010o\u001a\u00020\bH\u0002J\u0010\u0010p\u001a\u00020\b2\u0006\u0010\\\u001a\u00020\nH\u0002J\u0010\u0010q\u001a\u00020\n2\u0006\u0010\\\u001a\u00020\nH\u0002J\b\u0010r\u001a\u00020\u0016H\u0002J\u0010\u0010s\u001a\u00020\u00162\u0006\u0010\\\u001a\u00020\nH\u0002J\u001c\u0010t\u001a\u00020\u00162\u0006\u0010\\\u001a\u00020\n2\n\u0010&\u001a\u0006\u0012\u0002\b\u00030%H\u0002J\u0010\u0010w\u001a\u00020\b2\u0006\u0010v\u001a\u00020uH\u0002J\b\u0010x\u001a\u00020\bH\u0014J \u0010|\u001a\u00020\b2\u0006\u0010y\u001a\u00020\n2\u0006\u0010z\u001a\u00020\n2\u0006\u0010{\u001a\u00020\nH\u0004J\u0018\u0010\u007f\u001a\u00020\b2\u0006\u0010}\u001a\u00020\n2\u0006\u0010~\u001a\u00020\nH\u0014J\u0013\u0010\u0080\u0001\u001a\u00020\b2\b\u0010,\u001a\u0004\u0018\u00010+H\u0014J\u0015\u0010\u0083\u0001\u001a\u00020\u00162\n\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0081\u0001H\u0017J\t\u0010\u0084\u0001\u001a\u00020\bH\u0016J\t\u0010\u0085\u0001\u001a\u00020\bH\u0016J\u001d\u0010\u0088\u0001\u001a\u00020\b\"\u0004\b\u0000\u0010f2\u000e\u0010\u0087\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0086\u0001J\u0013\u0010\u0089\u0001\u001a\u00020\b2\n\u0010&\u001a\u0006\u0012\u0002\b\u00030%J\r\u0010\u008a\u0001\u001a\b\u0012\u0002\b\u0003\u0018\u00010%J\u0011\u0010\u008d\u0001\u001a\u00020\b2\b\u0010\u008c\u0001\u001a\u00030\u008b\u0001J \u0010\u008d\u0001\u001a\u00020\b2\u0017\u0010\u0090\u0001\u001a\u0012\u0012\u0007\u0012\u0005\u0018\u00010\u008f\u0001\u0012\u0004\u0012\u00020\u00100\u008e\u0001J\u0011\u0010\u0093\u0001\u001a\u00020\b2\b\u0010\u0092\u0001\u001a\u00030\u0091\u0001J*\u0010\u0093\u0001\u001a\u00020\b2!\u0010\u0095\u0001\u001a\u001c\u0012\b\u0012\u0006\u0012\u0002\b\u00030%\u0012\u0007\u0012\u0005\u0018\u00010\u008f\u0001\u0012\u0004\u0012\u00020\n0\u0094\u0001J\u0010\u0010\u0097\u0001\u001a\u00020\b2\u0007\u0010\u0096\u0001\u001a\u00020\u0013J\u0010\u0010\u0099\u0001\u001a\u00020\b2\u0007\u0010\u0098\u0001\u001a\u00020\u0013J\u001e\u0010\u009d\u0001\u001a\u00020\b2\b\u0010\u009b\u0001\u001a\u00030\u009a\u00012\t\b\u0002\u0010\u009c\u0001\u001a\u00020\u0016H\u0007J\u0012\u0010\u009f\u0001\u001a\u00020\b2\t\b\u0001\u0010\u009e\u0001\u001a\u00020\nJ\u0012\u0010¡\u0001\u001a\u00020\b2\t\b\u0001\u0010 \u0001\u001a\u00020\nJ\u0010\u0010£\u0001\u001a\u00020\b2\u0007\u0010¢\u0001\u001a\u00020\u0013J\u0010\u0010¥\u0001\u001a\u00020\b2\u0007\u0010¤\u0001\u001a\u00020\u0013J\u0010\u0010§\u0001\u001a\u00020\b2\u0007\u0010¦\u0001\u001a\u00020\u0013J\u0007\u0010¨\u0001\u001a\u00020\u0016J\u0010\u0010ª\u0001\u001a\u00020\b2\u0007\u0010©\u0001\u001a\u00020\u0013J\u0012\u0010¬\u0001\u001a\u00020\b2\t\b\u0001\u0010«\u0001\u001a\u00020\nJ\u0010\u0010®\u0001\u001a\u00020\b2\u0007\u0010\u00ad\u0001\u001a\u00020\u0013J\u0010\u0010°\u0001\u001a\u00020\b2\u0007\u0010¯\u0001\u001a\u00020\u0013J\u0010\u0010²\u0001\u001a\u00020\b2\u0007\u0010±\u0001\u001a\u00020\u0013J\u0012\u0010´\u0001\u001a\u00020\b2\t\b\u0001\u0010³\u0001\u001a\u00020\nJ\u0010\u0010µ\u0001\u001a\u00020\b2\u0007\u0010\u0096\u0001\u001a\u00020\u0013J\u0010\u0010¶\u0001\u001a\u00020\b2\u0007\u0010\u0096\u0001\u001a\u00020\u0013J\u0011\u0010·\u0001\u001a\u00020\b2\b\u0010\u009b\u0001\u001a\u00030\u009a\u0001J\u0011\u0010¸\u0001\u001a\u00020\b2\b\u0010\u009b\u0001\u001a\u00030\u009a\u0001J\u0012\u0010º\u0001\u001a\u00020\b2\t\b\u0001\u0010¹\u0001\u001a\u00020\nJ\u0012\u0010¼\u0001\u001a\u00020\b2\t\b\u0001\u0010»\u0001\u001a\u00020\nJ\u0010\u0010¾\u0001\u001a\u00020\b2\u0007\u0010½\u0001\u001a\u00020\u0013J\u0010\u0010À\u0001\u001a\u00020\b2\u0007\u0010¿\u0001\u001a\u00020\u0013J'\u0010Ã\u0001\u001a\u00020\b2\u0006\u0010\\\u001a\u00020\n2\t\b\u0002\u0010Á\u0001\u001a\u00020\u00162\t\b\u0002\u0010Â\u0001\u001a\u00020\nH\u0007J\u001f\u0010Æ\u0001\u001a\u00020\b2\t\b\u0003\u0010Ä\u0001\u001a\u00020\n2\t\b\u0001\u0010Å\u0001\u001a\u00020\nH\u0007J'\u0010Æ\u0001\u001a\u00020\b2\t\b\u0003\u0010Ä\u0001\u001a\u00020\n2\t\b\u0001\u0010Å\u0001\u001a\u00020\n2\u0006\u0010v\u001a\u00020uH\u0007J\u001f\u0010Ç\u0001\u001a\u00020\b2\t\b\u0003\u0010Ä\u0001\u001a\u00020\n2\t\b\u0001\u0010Å\u0001\u001a\u00020\nH\u0007J'\u0010Ç\u0001\u001a\u00020\b2\t\b\u0003\u0010Ä\u0001\u001a\u00020\n2\t\b\u0001\u0010Å\u0001\u001a\u00020\n2\u0006\u0010v\u001a\u00020uH\u0007J\u0007\u0010È\u0001\u001a\u00020\nJ\u0018\u0010É\u0001\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010f¢\u0006\u0006\bÉ\u0001\u0010Ê\u0001J!\u0010Ì\u0001\u001a\u0004\u0018\u00018\u0000\"\u0005\b\u0000\u0010Ë\u00012\u0006\u0010\\\u001a\u00020\n¢\u0006\u0006\bÌ\u0001\u0010Í\u0001J\u0007\u0010Î\u0001\u001a\u00020\nJ \u0010Ñ\u0001\u001a\u00020\n2\n\u0010Ï\u0001\u001a\u0005\u0018\u00010\u008f\u00012\t\b\u0002\u0010Ð\u0001\u001a\u00020\u0016H\u0017J\u0007\u0010Ò\u0001\u001a\u00020\u0016J\t\u0010Ó\u0001\u001a\u00020\nH\u0004J\u0007\u0010Ô\u0001\u001a\u00020\u0013J\u0010\u0010Ö\u0001\u001a\u00020\b2\u0007\u0010Õ\u0001\u001a\u00020\u0013J\u0012\u0010Ø\u0001\u001a\u00020\b2\t\b\u0001\u0010×\u0001\u001a\u00020\nJ\u0012\u0010Ú\u0001\u001a\u00020\b2\u0007\u0010Ù\u0001\u001a\u00020\nH\u0014J\u0012\u0010Ü\u0001\u001a\u00020\b2\u0007\u0010Û\u0001\u001a\u00020\nH\u0014J\u001d\u0010Ý\u0001\u001a\u00020\b2\n\u0010&\u001a\u0006\u0012\u0002\b\u00030%2\u0006\u0010\\\u001a\u00020\nH\u0014J\u001b\u0010à\u0001\u001a\u00020\b2\u0007\u0010Þ\u0001\u001a\u00020\n2\u0007\u0010ß\u0001\u001a\u00020\nH\u0014J\u0013\u0010ã\u0001\u001a\u00020\b2\n\u0010â\u0001\u001a\u0005\u0018\u00010á\u0001J\u0013\u0010æ\u0001\u001a\u00020\b2\n\u0010å\u0001\u001a\u0005\u0018\u00010ä\u0001J\u0013\u0010é\u0001\u001a\u00020\b2\n\u0010è\u0001\u001a\u0005\u0018\u00010ç\u0001R\u0017\u0010ì\u0001\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bê\u0001\u0010ë\u0001R\u0018\u0010ð\u0001\u001a\u00030í\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bî\u0001\u0010ï\u0001R\u0017\u0010ñ\u0001\u001a\u00030í\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bj\u0010ï\u0001R\u0018\u0010ó\u0001\u001a\u00030í\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bò\u0001\u0010ï\u0001R\u0018\u0010÷\u0001\u001a\u00030ô\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bõ\u0001\u0010ö\u0001R\u0018\u0010ù\u0001\u001a\u00030ô\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bø\u0001\u0010ö\u0001R\u0018\u0010û\u0001\u001a\u00030ô\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bú\u0001\u0010ö\u0001R\u0018\u0010ý\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bü\u0001\u0010LR\u0018\u0010ÿ\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bþ\u0001\u0010LR\u0017\u0010\u0080\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010LR\u0017\u0010\u0081\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010LR\u0017\u0010\u0082\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010LR\u0017\u0010\u0083\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010LR\u0017\u0010\u0084\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010LR\u0017\u0010\u0085\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010LR\u0017\u0010\u0086\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010LR\u0017\u0010\u0087\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010LR\u0017\u0010\u0088\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010LR\u0017\u0010\u0089\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010LR\u0018\u0010\u008b\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008a\u0002\u0010LR\u0017\u0010\u008c\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010LR\u0016\u00109\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010LR\u0017\u0010\u008d\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010LR\u0016\u0010:\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010LR\u0017\u0010\u0090\u0002\u001a\u00030\u008e\u00028\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b!\u0010\u008f\u0002R\u0017\u0010\u0093\u0002\u001a\u00030\u0091\u00028\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u001a\u0010\u0092\u0002R\u0015\u0010N\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b)\u0010\u0094\u0002R\u0016\u0010\u0095\u0002\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u001f\u0010\u0094\u0002R\u001b\u0010\u0098\u0002\u001a\u0005\u0018\u00010\u0096\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0018\u0010\u0097\u0002R\u0017\u0010\u0099\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010LR\u0017\u0010\u009a\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010LR\u0017\u0010\u009b\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010LR\u0017\u0010\u009c\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010LR\u0017\u0010Ù\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010LR\u0017\u0010\u009d\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010LR\u0017\u0010\u009e\u0002\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010GR\u0018\u0010 \u0002\u001a\u00030\u009f\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010qR\u0017\u0010¡\u0002\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010.R\u0017\u0010¢\u0002\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010.R!\u0010¨\u0002\u001a\u00030£\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¤\u0002\u0010¥\u0002\u001a\u0006\b¦\u0002\u0010§\u0002R\u001f\u0010«\u0002\u001a\b\u0012\u0002\b\u0003\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0002\u0010ª\u0002R\u0018\u0010\u00ad\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¬\u0002\u0010LR\u0017\u0010®\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010LR\u0018\u0010°\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¯\u0002\u0010LR\u0016\u0010y\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010LR3\u0010¸\u0002\u001a\u00030±\u00022\b\u0010²\u0002\u001a\u00030±\u00028\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bU\u0010³\u0002\u001a\u0006\b´\u0002\u0010µ\u0002\"\u0006\b¶\u0002\u0010·\u0002R1\u0010½\u0002\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bË\u0001\u0010L\u001a\u0006\b¹\u0002\u0010º\u0002\"\u0006\b»\u0002\u0010¼\u0002R0\u0010¿\u0002\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0016\n\u0004\b-\u0010L\u001a\u0006\b¾\u0002\u0010º\u0002\"\u0006\b\u0097\u0001\u0010¼\u0002R0\u0010Ä\u0002\u001a\u00020\u00162\u0007\u0010²\u0002\u001a\u00020\u00168\u0006@FX\u0086\u000e¢\u0006\u0016\n\u0004\b|\u0010.\u001a\u0006\bÀ\u0002\u0010Á\u0002\"\u0006\bÂ\u0002\u0010Ã\u0002R0\u0010Æ\u0002\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0016\n\u0004\b*\u0010L\u001a\u0006\bÅ\u0002\u0010º\u0002\"\u0006\b\u0099\u0001\u0010¼\u0002R4\u0010Î\u0002\u001a\u00030Ç\u00022\b\u0010²\u0002\u001a\u00030Ç\u00028\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\bÈ\u0002\u0010É\u0002\u001a\u0006\bÊ\u0002\u0010Ë\u0002\"\u0006\bÌ\u0002\u0010Í\u0002R1\u0010Ò\u0002\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0087\u000e¢\u0006\u0017\n\u0005\bÏ\u0002\u0010L\u001a\u0006\bÐ\u0002\u0010º\u0002\"\u0006\bÑ\u0002\u0010¼\u0002R1\u0010Ö\u0002\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0087\u000e¢\u0006\u0017\n\u0005\bÓ\u0002\u0010L\u001a\u0006\bÔ\u0002\u0010º\u0002\"\u0006\bÕ\u0002\u0010¼\u0002R1\u0010Ù\u0002\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\b×\u0002\u0010L\u001a\u0006\bØ\u0002\u0010º\u0002\"\u0006\b¥\u0001\u0010¼\u0002R1\u0010Ü\u0002\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bÚ\u0002\u0010L\u001a\u0006\bÛ\u0002\u0010º\u0002\"\u0006\b§\u0001\u0010¼\u0002R\u0018\u0010\u009c\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bÝ\u0002\u0010.R\u001c\u0010à\u0002\u001a\u0005\u0018\u00010\u009a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÞ\u0002\u0010ß\u0002R\u001c\u0010â\u0002\u001a\u0005\u0018\u00010\u009a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bá\u0002\u0010ß\u0002R1\u0010æ\u0002\u001a\u00020\u00162\u0007\u0010²\u0002\u001a\u00020\u00168\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bã\u0002\u0010.\u001a\u0006\bä\u0002\u0010Á\u0002\"\u0006\bå\u0002\u0010Ã\u0002R0\u0010\u000b\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bç\u0002\u0010L\u001a\u0006\bè\u0002\u0010º\u0002\"\u0006\bé\u0002\u0010¼\u0002R1\u0010ì\u0002\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bê\u0002\u0010L\u001a\u0006\bë\u0002\u0010º\u0002\"\u0006\bª\u0001\u0010¼\u0002R1\u0010ð\u0002\u001a\u00020\u00162\u0007\u0010²\u0002\u001a\u00020\u00168\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bí\u0002\u0010.\u001a\u0006\bî\u0002\u0010Á\u0002\"\u0006\bï\u0002\u0010Ã\u0002R1\u0010ô\u0002\u001a\u00020\u00162\u0007\u0010²\u0002\u001a\u00020\u00168\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bñ\u0002\u0010.\u001a\u0006\bò\u0002\u0010Á\u0002\"\u0006\bó\u0002\u0010Ã\u0002R3\u0010ø\u0002\u001a\u00020\n2\t\b\u0001\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bõ\u0002\u0010L\u001a\u0006\bö\u0002\u0010º\u0002\"\u0006\b÷\u0002\u0010¼\u0002R1\u0010û\u0002\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bù\u0002\u0010L\u001a\u0006\bú\u0002\u0010º\u0002\"\u0006\b®\u0001\u0010¼\u0002R4\u0010\u0083\u0003\u001a\u00030ü\u00022\b\u0010²\u0002\u001a\u00030ü\u00028\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\bý\u0002\u0010þ\u0002\u001a\u0006\bÿ\u0002\u0010\u0080\u0003\"\u0006\b\u0081\u0003\u0010\u0082\u0003R1\u0010\u0086\u0003\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\b\u0084\u0003\u0010L\u001a\u0006\b\u0085\u0003\u0010º\u0002\"\u0006\b°\u0001\u0010¼\u0002R4\u0010\u008e\u0003\u001a\u00030\u0087\u00032\b\u0010²\u0002\u001a\u00030\u0087\u00038\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\b\u0088\u0003\u0010\u0089\u0003\u001a\u0006\b\u008a\u0003\u0010\u008b\u0003\"\u0006\b\u008c\u0003\u0010\u008d\u0003R1\u0010\u0091\u0003\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\b\u008f\u0003\u0010L\u001a\u0006\b\u0090\u0003\u0010º\u0002\"\u0006\b²\u0001\u0010¼\u0002R1\u0010\u0095\u0003\u001a\u00020\u00162\u0007\u0010²\u0002\u001a\u00020\u00168\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\b\u0092\u0003\u0010.\u001a\u0006\b\u0093\u0003\u0010Á\u0002\"\u0006\b\u0094\u0003\u0010Ã\u0002R3\u0010\u0099\u0003\u001a\u00020\n2\t\b\u0001\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0087\u000e¢\u0006\u0017\n\u0005\b\u0096\u0003\u0010L\u001a\u0006\b\u0097\u0003\u0010º\u0002\"\u0006\b\u0098\u0003\u0010¼\u0002R1\u0010\u009d\u0003\u001a\u00020\u00162\u0007\u0010²\u0002\u001a\u00020\u00168\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\b\u009a\u0003\u0010.\u001a\u0006\b\u009b\u0003\u0010Á\u0002\"\u0006\b\u009c\u0003\u0010Ã\u0002R4\u0010¥\u0003\u001a\u00030\u009e\u00032\b\u0010²\u0002\u001a\u00030\u009e\u00038\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\b\u009f\u0003\u0010 \u0003\u001a\u0006\b¡\u0003\u0010¢\u0003\"\u0006\b£\u0003\u0010¤\u0003R1\u0010«\u0003\u001a\u00020\u00132\u0007\u0010²\u0002\u001a\u00020\u00138\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\b¦\u0003\u0010G\u001a\u0006\b§\u0003\u0010¨\u0003\"\u0006\b©\u0003\u0010ª\u0003R1\u0010¯\u0003\u001a\u00020\u00132\u0007\u0010²\u0002\u001a\u00020\u00138\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\b¬\u0003\u0010G\u001a\u0006\b\u00ad\u0003\u0010¨\u0003\"\u0006\b®\u0003\u0010ª\u0003R1\u0010³\u0003\u001a\u00020\u00162\u0007\u0010²\u0002\u001a\u00020\u00168\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\b°\u0003\u0010.\u001a\u0006\b±\u0003\u0010Á\u0002\"\u0006\b²\u0003\u0010Ã\u0002R(\u0010·\u0003\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b´\u0003\u0010.\u001a\u0006\bµ\u0003\u0010Á\u0002\"\u0006\b¶\u0003\u0010Ã\u0002R\u0017\u0010{\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¸\u0003\u0010LR\u0017\u0010z\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¹\u0003\u0010LR\u0018\u0010»\u0003\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bº\u0003\u0010.R\u0019\u0010¾\u0003\u001a\u00020u8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0003\u0010½\u0003R4\u0010Æ\u0003\u001a\u00030¿\u00032\b\u0010²\u0002\u001a\u00030¿\u00038\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\bÀ\u0003\u0010Á\u0003\u001a\u0006\bÂ\u0003\u0010Ã\u0003\"\u0006\bÄ\u0003\u0010Å\u0003R4\u0010Ê\u0003\u001a\u00030¿\u00032\b\u0010²\u0002\u001a\u00030¿\u00038\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\bÇ\u0003\u0010Á\u0003\u001a\u0006\bÈ\u0003\u0010Ã\u0003\"\u0006\bÉ\u0003\u0010Å\u0003R1\u0010Í\u0003\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bË\u0003\u0010L\u001a\u0006\bÌ\u0003\u0010º\u0002\"\u0006\bµ\u0001\u0010¼\u0002R1\u0010Ð\u0003\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bÎ\u0003\u0010L\u001a\u0006\bÏ\u0003\u0010º\u0002\"\u0006\b¶\u0001\u0010¼\u0002R1\u0010Ó\u0003\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bÑ\u0003\u0010L\u001a\u0006\bÒ\u0003\u0010º\u0002\"\u0006\b¾\u0001\u0010¼\u0002R1\u0010Ö\u0003\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bÔ\u0003\u0010L\u001a\u0006\bÕ\u0003\u0010º\u0002\"\u0006\bÀ\u0001\u0010¼\u0002R1\u0010Ú\u0003\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\b×\u0003\u0010L\u001a\u0006\bØ\u0003\u0010º\u0002\"\u0006\bÙ\u0003\u0010¼\u0002R1\u0010Þ\u0003\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bÛ\u0003\u0010L\u001a\u0006\bÜ\u0003\u0010º\u0002\"\u0006\bÝ\u0003\u0010¼\u0002R1\u0010â\u0003\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bß\u0003\u0010L\u001a\u0006\bà\u0003\u0010º\u0002\"\u0006\bá\u0003\u0010¼\u0002R1\u0010æ\u0003\u001a\u00020\n2\u0007\u0010²\u0002\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bã\u0003\u0010L\u001a\u0006\bä\u0003\u0010º\u0002\"\u0006\bå\u0003\u0010¼\u0002R\u001c\u0010â\u0001\u001a\u0005\u0018\u00010á\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bç\u0003\u0010è\u0003R\u001c\u0010è\u0001\u001a\u0005\u0018\u00010ç\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bé\u0003\u0010ê\u0003R\u001c\u0010å\u0001\u001a\u0005\u0018\u00010ä\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bë\u0003\u0010ì\u0003R\u001c\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bí\u0003\u0010î\u0003R+\u0010\u0090\u0001\u001a\u0014\u0012\u0007\u0012\u0005\u0018\u00010\u008f\u0001\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bï\u0003\u0010ð\u0003R\u001c\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0091\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bñ\u0003\u0010ò\u0003R5\u0010õ\u0003\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030%\u0012\u0007\u0012\u0005\u0018\u00010\u008f\u0001\u0012\u0004\u0012\u00020\n\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bó\u0003\u0010ô\u0003R'\u0010ú\u0003\u001a\t\u0012\u0004\u0012\u00020\u00130ö\u00038BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b÷\u0003\u0010¥\u0002\u001a\u0006\bø\u0003\u0010ù\u0003R\u0017\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bû\u0003\u0010.R\u001b\u0010þ\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bü\u0003\u0010ý\u0003¨\u0006\u0087\u0004"}, d2 = {"Lcom/zyyoona7/wheel/WheelView;", "Landroid/view/View;", "Ljava/lang/Runnable;", "Lcom/zyyoona7/wheel/adapter/a$a;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "n0", "", "visibleItems", t.f74888m, "q0", "o0", "V0", "", "measureText", "textWidth", "", "Y0", SDKManager.ALGO_E_SM4_SM3_SM2, "", "isDataSetChanged", SDKManager.ALGO_D_RFU, bm.aM, "A", "x", "itemText", IAdInterListener.AdReqParam.WIDTH, "y", SDKManager.ALGO_C_RFU, "s", bm.aH, "r", "p", "v", "Lcom/zyyoona7/wheel/adapter/a;", "adapter", "G0", "H0", SDKManager.ALGO_B_AES_SHA256_RSA, "b1", "Landroid/graphics/Canvas;", "canvas", "W", "Z", "c0", "a0", "b0", "oriText", "H", "index", "scrolledOffset", "scrolledItem", "d0", "text", "clipTop", "clipBottom", "item2CenterOffsetY", "centerToBaselineY", "N", "X", "rotateX", "offsetY", "offsetZ", "M", "Y", "g0", "Landroid/graphics/Paint;", "paint", "F", "G", "X0", "r0", "U0", "I", "Landroid/widget/OverScroller;", "scroller", "a1", "isAnimate", t.f74879d, "deltaY", t.f74876a, "distance", "U", "R", "B0", "s0", "M0", "R0", "L", "position", "q", "dataHeight", "deltaDistance", "n", "remainder", "o", "getCurrentPosition", "A0", "i0", "T", "e0", "isMarkForceFinish", "f0", t.f74895t, "K", "I0", "K0", "L0", "J0", "T0", "J", "C0", "x0", "y0", "Lcom/zyyoona7/wheel/WheelView$OverRangeMode;", "overRangeMode", "W0", "onDetachedFromWindow", "selectedPosition", "minSelectedPosition", "maxSelectedPosition", bo.f74530g, "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "onDraw", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "run", "a", "", "data", "setData", "setAdapter", "getAdapter", "Lcom/zyyoona7/wheel/formatter/c;", "textFormatter", "setTextFormatter", "Lkotlin/Function1;", "", "formatterBlock", "Lcom/zyyoona7/wheel/adapter/b;", "itemIndexer", "setItemIndexer", "Lkotlin/Function2;", "indexerBlock", "textSizeSp", "setTextSize", "minTextSizeSp", "setMinTextSize", "Landroid/graphics/Typeface;", "typeface", "isBoldForSelectedItem", "setTypeface", "normalColorRes", "setNormalTextColorRes", "selectedColorRes", "setSelectedTextColorRes", "textPaddingDp", "setTextPadding", "textPaddingLeftDp", "setTextPaddingLeft", "textPaddingRightDp", "setTextPaddingRight", "u0", "lineSpacingDp", "setLineSpacing", "dividerColorRes", "setDividerColorRes", "dividerHeightDp", "setDividerHeight", "dividerPaddingDp", "setDividerPadding", "offsetYDp", "setDividerOffsetY", "curtainColorRes", "setCurtainColorRes", "setLeftTextSize", "setRightTextSize", "setLeftTypeface", "setRightTypeface", "leftTextColorRes", "setLeftTextColorRes", "rightTextColorRes", "setRightTextColorRes", "marginRightDp", "setLeftTextMarginRight", "marginLeftDp", "setRightTextMarginLeft", "isSmoothScroll", "smoothDuration", "setSelectedPosition", "min", "max", "setSelectedRange", "setSelectableRange", "getSelectedPosition", "getSelectedItem", "()Ljava/lang/Object;", "V", "h0", "(I)Ljava/lang/Object;", "getItemCount", "item", "isCompareFormatText", "l0", "j0", "getItemHeight", "getSoundVolume", "playVolume", "setSoundVolume", "soundRes", "setSoundResource", "scrollOffsetY", "P0", NoticeTopAnimActivityDialog_.STATE_EXTRA, "Q0", "O0", "oldPosition", "newPosition", "N0", "Lcb/b;", "itemSelectedListener", "setOnItemSelectedListener", "Lcb/a;", "itemPositionChangedListener", "setOnItemPositionChangedListener", "Lcb/c;", "scrollChangedListener", "setOnScrollChangedListener", t.f74887l, "Landroid/graphics/Paint;", "normalPaint", "Landroid/text/TextPaint;", "c", "Landroid/text/TextPaint;", "mainTextPaint", "leftTextPaint", "e", "rightTextPaint", "Landroid/graphics/Rect;", f.TAG, "Landroid/graphics/Rect;", "mainTextRect", "g", "leftTextRect", "h", "rightTextRect", "i", "mainTextMaxWidth", "j", "originTextMaxWidth", "leftTextWidth", "rightTextWidth", "itemHeight", "mainTextHeight", "leftTextHeight", "rightTextHeight", "curvedArcWidth", "textDrawStartX", "centerY", "selectedItemTopLimit", "u", "selectedItemBottomLimit", "clipLeft", "clipRight", "Landroid/graphics/Camera;", "Landroid/graphics/Camera;", "cameraForCurved", "Landroid/graphics/Matrix;", "Landroid/graphics/Matrix;", "matrixForCurved", "Landroid/widget/OverScroller;", "adjustScroller", "Landroid/view/VelocityTracker;", "Landroid/view/VelocityTracker;", "velocityTracker", "maxFlingVelocity", "minFlingVelocity", "minScrollY", "maxScrollY", "scrolledY", "lastTouchY", "", "downStartTime", "isForceFinishScroll", "isFlingScroll", "Ldb/a;", "O", "Lkotlin/Lazy;", "getSoundHelper", "()Ldb/a;", "soundHelper", "P", "Lcom/zyyoona7/wheel/adapter/a;", "wheelAdapter", "Q", "currentScrollPosition", "itemChangedPosition", "S", "currentScrollState", "Lcom/zyyoona7/wheel/WheelView$MeasureType;", HmInputMappingContent.FIELD_VALUE, "Lcom/zyyoona7/wheel/WheelView$MeasureType;", "getMaxTextWidthMeasureType", "()Lcom/zyyoona7/wheel/WheelView$MeasureType;", "setMaxTextWidthMeasureType", "(Lcom/zyyoona7/wheel/WheelView$MeasureType;)V", "maxTextWidthMeasureType", "getGravity", "()I", "setGravity", "(I)V", "gravity", "getTextSize", "textSize", "t0", "()Z", "setAutoFitTextSize", "(Z)V", "isAutoFitTextSize", "getMinTextSize", "minTextSize", "Landroid/graphics/Paint$Align;", "f1", "Landroid/graphics/Paint$Align;", "getTextAlign", "()Landroid/graphics/Paint$Align;", "setTextAlign", "(Landroid/graphics/Paint$Align;)V", "textAlign", "i1", "getNormalTextColor", "setNormalTextColor", "normalTextColor", "l1", "getSelectedTextColor", "setSelectedTextColor", "selectedTextColor", "p1", "getTextPaddingLeft", "textPaddingLeft", "q1", "getTextPaddingRight", "textPaddingRight", "r1", "v1", "Landroid/graphics/Typeface;", "normalTypeface", "L1", "boldTypeface", "R1", "getDrawDebugRectEnabled", "setDrawDebugRectEnabled", "drawDebugRectEnabled", "V1", "getVisibleItems", "setVisibleItems", "a2", "getLineSpacing", "lineSpacing", "b2", "w0", "setCyclic", "isCyclic", "c2", "E0", "setShowDivider", "isShowDivider", "d2", "getDividerColor", "setDividerColor", "dividerColor", "e2", "getDividerHeight", "dividerHeight", "Lcom/zyyoona7/wheel/WheelView$DividerType;", "f2", "Lcom/zyyoona7/wheel/WheelView$DividerType;", "getDividerType", "()Lcom/zyyoona7/wheel/WheelView$DividerType;", "setDividerType", "(Lcom/zyyoona7/wheel/WheelView$DividerType;)V", "dividerType", "g2", "getDividerPadding", "dividerPadding", "Landroid/graphics/Paint$Cap;", ApplicationProtocolNames.HTTP_2, "Landroid/graphics/Paint$Cap;", "getDividerCap", "()Landroid/graphics/Paint$Cap;", "setDividerCap", "(Landroid/graphics/Paint$Cap;)V", "dividerCap", "i2", "getDividerOffsetY", "dividerOffsetY", "j2", "D0", "setShowCurtain", "isShowCurtain", "k2", "getCurtainColor", "setCurtainColor", "curtainColor", "l2", "v0", "setCurved", "isCurved", "Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;", "m2", "Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;", "getCurvedArcDirection", "()Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;", "setCurvedArcDirection", "(Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;)V", "curvedArcDirection", "n2", "getCurvedArcDirectionFactor", "()F", "setCurvedArcDirectionFactor", "(F)V", "curvedArcDirectionFactor", "o2", "getRefractRatio", "setRefractRatio", "refractRatio", "p2", "F0", "setSoundEffect", "isSoundEffect", "q2", "z0", "setResetSelectedPosition", "isResetSelectedPosition", "r2", "s2", "t2", "isHideOverRangeItem", "u2", "Lcom/zyyoona7/wheel/WheelView$OverRangeMode;", "mOverRangeMode", "", "v2", "Ljava/lang/CharSequence;", "getLeftText", "()Ljava/lang/CharSequence;", "setLeftText", "(Ljava/lang/CharSequence;)V", "leftText", "w2", "getRightText", "setRightText", "rightText", "x2", "getLeftTextSize", "leftTextSize", "y2", "getRightTextSize", "rightTextSize", "z2", "getLeftTextMarginRight", "leftTextMarginRight", "A2", "getRightTextMarginLeft", "rightTextMarginLeft", "B2", "getLeftTextColor", "setLeftTextColor", "leftTextColor", "C2", "getRightTextColor", "setRightTextColor", "rightTextColor", "D2", "getLeftTextGravity", "setLeftTextGravity", "leftTextGravity", "E2", "getRightTextGravity", "setRightTextGravity", "rightTextGravity", "F2", "Lcb/b;", "G2", "Lcb/c;", "H2", "Lcb/a;", "I2", "Lcom/zyyoona7/wheel/formatter/c;", "J2", "Lkotlin/jvm/functions/Function1;", "K2", "Lcom/zyyoona7/wheel/adapter/b;", "L2", "Lkotlin/jvm/functions/Function2;", "itemIndexerBlock", "Landroid/util/SparseArray;", "M2", "getResizeArray", "()Landroid/util/SparseArray;", "resizeArray", "N2", "O2", "Ljava/lang/Runnable;", "selectedPositionRunnable", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "u3", "CurvedArcDirection", "DividerType", "MeasureType", "OverRangeMode", "wheelview_release"}, k = 1, mv = {1, 4, 0})
public class WheelView extends View implements Runnable, com.zyyoona7.wheel.adapter.a.InterfaceC1145a {
    private static final String Q2 = "WheelView";
    private static final int R2;
    private static final int S2;
    private static final int T2;
    private static final int U2;
    private static final int V2;
    public static final int W2 = -12303292;
    public static final int X2 = -16777216;
    public static final int Y2 = 5;
    public static final int Z2 = 250;

    /* JADX INFO: renamed from: a3, reason: collision with root package name */
    public static final long f90594a3 = 120;

    /* JADX INFO: renamed from: b3, reason: collision with root package name */
    public static final float f90595b3 = 1.0f;

    /* JADX INFO: renamed from: c3, reason: collision with root package name */
    public static final int f90596c3 = 0;

    /* JADX INFO: renamed from: d3, reason: collision with root package name */
    public static final int f90597d3 = 1;

    /* JADX INFO: renamed from: e3, reason: collision with root package name */
    public static final int f90598e3 = 2;

    /* JADX INFO: renamed from: f3, reason: collision with root package name */
    public static final int f90599f3 = 0;

    /* JADX INFO: renamed from: g3, reason: collision with root package name */
    public static final int f90600g3 = 1;

    /* JADX INFO: renamed from: h3, reason: collision with root package name */
    public static final int f90601h3 = 2;

    /* JADX INFO: renamed from: i3, reason: collision with root package name */
    public static final int f90602i3 = 0;

    /* JADX INFO: renamed from: j3, reason: collision with root package name */
    public static final int f90603j3 = 1;

    /* JADX INFO: renamed from: k3, reason: collision with root package name */
    public static final int f90604k3 = 2;

    /* JADX INFO: renamed from: l3, reason: collision with root package name */
    public static final float f90605l3 = 0.75f;

    /* JADX INFO: renamed from: m3, reason: collision with root package name */
    public static final int f90606m3 = 0;

    /* JADX INFO: renamed from: n3, reason: collision with root package name */
    public static final int f90607n3 = 1;

    /* JADX INFO: renamed from: o3, reason: collision with root package name */
    public static final int f90608o3 = 2;

    /* JADX INFO: renamed from: p3, reason: collision with root package name */
    public static final int f90609p3 = 1;

    /* JADX INFO: renamed from: q3, reason: collision with root package name */
    public static final int f90610q3 = 2;

    /* JADX INFO: renamed from: r3, reason: collision with root package name */
    public static final int f90611r3 = 3;

    /* JADX INFO: renamed from: s3, reason: collision with root package name */
    public static final int f90612s3 = 4;

    /* JADX INFO: renamed from: t3, reason: collision with root package name */
    public static final int f90613t3 = 5;

    /* JADX INFO: renamed from: u3, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private final Matrix matrixForCurved;

    /* JADX INFO: renamed from: A2, reason: from kotlin metadata */
    private int rightTextMarginLeft;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private final OverScroller scroller;

    /* JADX INFO: renamed from: B2, reason: from kotlin metadata */
    private int leftTextColor;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private final OverScroller adjustScroller;

    /* JADX INFO: renamed from: C2, reason: from kotlin metadata */
    private int rightTextColor;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private VelocityTracker velocityTracker;

    /* JADX INFO: renamed from: D2, reason: from kotlin metadata */
    private int leftTextGravity;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private int maxFlingVelocity;

    /* JADX INFO: renamed from: E2, reason: from kotlin metadata */
    private int rightTextGravity;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private int minFlingVelocity;

    /* JADX INFO: renamed from: F2, reason: from kotlin metadata */
    private cb.b itemSelectedListener;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private int minScrollY;

    /* JADX INFO: renamed from: G2, reason: from kotlin metadata */
    private cb.c scrollChangedListener;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private int maxScrollY;

    /* JADX INFO: renamed from: H2, reason: from kotlin metadata */
    private cb.a itemPositionChangedListener;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private int scrollOffsetY;

    /* JADX INFO: renamed from: I2, reason: from kotlin metadata */
    private com.zyyoona7.wheel.formatter.c textFormatter;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private int scrolledY;

    /* JADX INFO: renamed from: J2, reason: from kotlin metadata */
    private Function1<Object, String> formatterBlock;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private float lastTouchY;

    /* JADX INFO: renamed from: K2, reason: from kotlin metadata */
    private com.zyyoona7.wheel.adapter.b itemIndexer;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private long downStartTime;

    /* JADX INFO: renamed from: L1, reason: from kotlin metadata */
    private Typeface boldTypeface;

    /* JADX INFO: renamed from: L2, reason: from kotlin metadata */
    private Function2<? super com.zyyoona7.wheel.adapter.a<?>, Object, Integer> itemIndexerBlock;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private boolean isForceFinishScroll;

    /* JADX INFO: renamed from: M2, reason: from kotlin metadata */
    private final Lazy resizeArray;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    private boolean isFlingScroll;

    /* JADX INFO: renamed from: N2, reason: from kotlin metadata */
    private boolean isDataSetChanged;

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    private final Lazy soundHelper;

    /* JADX INFO: renamed from: O2, reason: from kotlin metadata */
    private Runnable selectedPositionRunnable;

    /* JADX INFO: renamed from: P, reason: from kotlin metadata */
    private com.zyyoona7.wheel.adapter.a<?> wheelAdapter;
    private HashMap P2;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    private int currentScrollPosition;

    /* JADX INFO: renamed from: R, reason: from kotlin metadata */
    private int itemChangedPosition;

    /* JADX INFO: renamed from: R1, reason: from kotlin metadata */
    private boolean drawDebugRectEnabled;

    /* JADX INFO: renamed from: S, reason: from kotlin metadata */
    private int currentScrollState;

    /* JADX INFO: renamed from: T, reason: from kotlin metadata */
    private int selectedPosition;

    /* JADX INFO: renamed from: U, reason: from kotlin metadata */
    @NotNull
    private MeasureType maxTextWidthMeasureType;

    /* JADX INFO: renamed from: V, reason: from kotlin metadata */
    private int gravity;

    /* JADX INFO: renamed from: V1, reason: from kotlin metadata */
    private int visibleItems;

    /* JADX INFO: renamed from: W, reason: from kotlin metadata */
    private int textSize;

    /* JADX INFO: renamed from: a2, reason: collision with root package name and from kotlin metadata */
    private int lineSpacing;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Paint normalPaint;

    /* JADX INFO: renamed from: b1, reason: collision with root package name and from kotlin metadata */
    private int minTextSize;

    /* JADX INFO: renamed from: b2, reason: collision with root package name and from kotlin metadata */
    private boolean isCyclic;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final TextPaint mainTextPaint;

    /* JADX INFO: renamed from: c2, reason: collision with root package name and from kotlin metadata */
    private boolean isShowDivider;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final TextPaint leftTextPaint;

    /* JADX INFO: renamed from: d2, reason: collision with root package name and from kotlin metadata */
    private int dividerColor;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final TextPaint rightTextPaint;

    /* JADX INFO: renamed from: e2, reason: collision with root package name and from kotlin metadata */
    private int dividerHeight;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Rect mainTextRect;

    /* JADX INFO: renamed from: f1, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private Paint.Align textAlign;

    /* JADX INFO: renamed from: f2, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private DividerType dividerType;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Rect leftTextRect;

    /* JADX INFO: renamed from: g2, reason: collision with root package name and from kotlin metadata */
    private int dividerPadding;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Rect rightTextRect;

    /* JADX INFO: renamed from: h2, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private Paint.Cap dividerCap;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int mainTextMaxWidth;

    /* JADX INFO: renamed from: i1, reason: collision with root package name and from kotlin metadata */
    @ColorInt
    private int normalTextColor;

    /* JADX INFO: renamed from: i2, reason: collision with root package name and from kotlin metadata */
    private int dividerOffsetY;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private int originTextMaxWidth;

    /* JADX INFO: renamed from: j2, reason: collision with root package name and from kotlin metadata */
    private boolean isShowCurtain;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private int leftTextWidth;

    /* JADX INFO: renamed from: k2, reason: collision with root package name and from kotlin metadata */
    @ColorInt
    private int curtainColor;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int rightTextWidth;

    /* JADX INFO: renamed from: l1, reason: collision with root package name and from kotlin metadata */
    @ColorInt
    private int selectedTextColor;

    /* JADX INFO: renamed from: l2, reason: collision with root package name and from kotlin metadata */
    private boolean isCurved;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private int itemHeight;

    /* JADX INFO: renamed from: m2, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private CurvedArcDirection curvedArcDirection;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private int mainTextHeight;

    /* JADX INFO: renamed from: n2, reason: collision with root package name and from kotlin metadata */
    private float curvedArcDirectionFactor;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private int leftTextHeight;

    /* JADX INFO: renamed from: o2, reason: collision with root package name and from kotlin metadata */
    private float refractRatio;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private int rightTextHeight;

    /* JADX INFO: renamed from: p0, reason: collision with root package name and from kotlin metadata */
    private boolean isAutoFitTextSize;

    /* JADX INFO: renamed from: p1, reason: collision with root package name and from kotlin metadata */
    private int textPaddingLeft;

    /* JADX INFO: renamed from: p2, reason: collision with root package name and from kotlin metadata */
    private boolean isSoundEffect;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private int curvedArcWidth;

    /* JADX INFO: renamed from: q1, reason: collision with root package name and from kotlin metadata */
    private int textPaddingRight;

    /* JADX INFO: renamed from: q2, reason: collision with root package name and from kotlin metadata */
    private boolean isResetSelectedPosition;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private int textDrawStartX;

    /* JADX INFO: renamed from: r1, reason: collision with root package name and from kotlin metadata */
    private boolean isBoldForSelectedItem;

    /* JADX INFO: renamed from: r2, reason: collision with root package name and from kotlin metadata */
    private int maxSelectedPosition;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private int centerY;

    /* JADX INFO: renamed from: s2, reason: collision with root package name and from kotlin metadata */
    private int minSelectedPosition;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private int selectedItemTopLimit;

    /* JADX INFO: renamed from: t2, reason: collision with root package name and from kotlin metadata */
    private boolean isHideOverRangeItem;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private int selectedItemBottomLimit;

    /* JADX INFO: renamed from: u2, reason: collision with root package name and from kotlin metadata */
    private OverRangeMode mOverRangeMode;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private int clipLeft;

    /* JADX INFO: renamed from: v1, reason: collision with root package name and from kotlin metadata */
    private Typeface normalTypeface;

    /* JADX INFO: renamed from: v2, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private CharSequence leftText;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private int clipTop;

    /* JADX INFO: renamed from: w2, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private CharSequence rightText;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private int clipRight;

    /* JADX INFO: renamed from: x2, reason: collision with root package name and from kotlin metadata */
    private int leftTextSize;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private int clipBottom;

    /* JADX INFO: renamed from: y2, reason: collision with root package name and from kotlin metadata */
    private int rightTextSize;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private final Camera cameraForCurved;

    /* JADX INFO: renamed from: z2, reason: collision with root package name and from kotlin metadata */
    private int leftTextMarginRight;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;", "", "(Ljava/lang/String;I)V", "LEFT", "CENTER", "RIGHT", "wheelview_release"}, k = 1, mv = {1, 1, 16})
    public enum CurvedArcDirection {
        LEFT,
        CENTER,
        RIGHT
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/zyyoona7/wheel/WheelView$DividerType;", "", "(Ljava/lang/String;I)V", "FILL", "WRAP", "WRAP_ALL", "wheelview_release"}, k = 1, mv = {1, 1, 16})
    public enum DividerType {
        FILL,
        WRAP,
        WRAP_ALL
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/zyyoona7/wheel/WheelView$MeasureType;", "", "(Ljava/lang/String;I)V", "SAME_WIDTH", "MAX_LENGTH", "DEFAULT", "SAME_WIDTH_WITH_NUM", "MAX_LENGTH_WITH_NUM", "wheelview_release"}, k = 1, mv = {1, 1, 16})
    public enum MeasureType {
        SAME_WIDTH,
        MAX_LENGTH,
        DEFAULT,
        SAME_WIDTH_WITH_NUM,
        MAX_LENGTH_WITH_NUM
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/zyyoona7/wheel/WheelView$OverRangeMode;", "", "(Ljava/lang/String;I)V", "NORMAL", "CANT_SCROLL", "HIDE_ITEM", "wheelview_release"}, k = 1, mv = {1, 1, 16})
    public enum OverRangeMode {
        NORMAL,
        CANT_SCROLL,
        HIDE_ITEM
    }

    /* JADX INFO: renamed from: com.zyyoona7.wheel.WheelView$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void l() {
        }

        @JvmStatic
        @NotNull
        public final CurvedArcDirection b(int i10) {
            if (i10 != 0) {
                return i10 != 2 ? CurvedArcDirection.CENTER : CurvedArcDirection.RIGHT;
            }
            return CurvedArcDirection.LEFT;
        }

        @JvmStatic
        @NotNull
        public final DividerType c(int i10) {
            if (i10 != 1) {
                return i10 != 2 ? DividerType.FILL : DividerType.WRAP_ALL;
            }
            return DividerType.WRAP;
        }

        @JvmStatic
        @NotNull
        public final Paint.Align d(int i10) {
            if (i10 != 0) {
                return i10 != 2 ? Paint.Align.CENTER : Paint.Align.RIGHT;
            }
            return Paint.Align.LEFT;
        }

        @JvmStatic
        public final int e(int i10) {
            if (i10 != 1) {
                return i10 != 2 ? 17 : 80;
            }
            return 48;
        }

        @JvmStatic
        protected final int f(float f10) {
            Resources system = Resources.getSystem();
            Intrinsics.checkExpressionValueIsNotNull(system, "Resources.getSystem()");
            return (int) TypedValue.applyDimension(1, f10, system.getDisplayMetrics());
        }

        public final int g() {
            return WheelView.V2;
        }

        public final int h() {
            return WheelView.R2;
        }

        public final int i() {
            return WheelView.T2;
        }

        public final int j() {
            return WheelView.U2;
        }

        public final int k() {
            return WheelView.S2;
        }

        @JvmStatic
        protected final int m(float f10) {
            Resources system = Resources.getSystem();
            Intrinsics.checkExpressionValueIsNotNull(system, "Resources.getSystem()");
            return (int) TypedValue.applyDimension(2, f10, system.getDisplayMetrics());
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    static final class c implements Runnable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f90676c;

        c(int i10) {
            this.f90676c = i10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            WheelView.this.setSelectedPosition(this.f90676c, false, 0);
        }
    }

    static {
        Companion companion = new Companion(null);
        INSTANCE = companion;
        R2 = companion.f(2.0f);
        S2 = companion.m(15.0f);
        T2 = companion.m(6.0f);
        U2 = companion.f(2.0f);
        V2 = companion.f(1.0f);
    }

    @JvmOverloads
    public WheelView(@NotNull Context context) {
        this(context, null, 0, 6, null);
    }

    private final void A() {
        if (this.rightText.length() == 0) {
            this.rightTextWidth = 0;
            this.rightTextHeight = 0;
        } else {
            this.rightTextPaint.setTextSize(this.rightTextSize);
            this.rightTextWidth = (int) this.rightTextPaint.measureText(this.rightText.toString());
            this.rightTextHeight = (int) (this.rightTextPaint.getFontMetrics().bottom - this.rightTextPaint.getFontMetrics().top);
        }
    }

    private final boolean A0(int position) {
        if (this.wheelAdapter == null) {
            return false;
        }
        int iI0 = i0(position);
        int i10 = this.itemHeight / 6;
        int i11 = this.scrollOffsetY;
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar == null) {
            Intrinsics.throwNpe();
        }
        int iB = i11 % (aVar.b() * this.itemHeight);
        return iI0 - i10 <= iB && iI0 + i10 >= iB;
    }

    private final void B() {
        this.scrollOffsetY = this.selectedPosition * this.itemHeight;
    }

    private final boolean B0() {
        return this.minScrollY == -1 || this.maxScrollY == -1;
    }

    private final void C() {
        int measuredHeight = getMeasuredHeight() / 2;
        int i10 = this.leftText.length() == 0 ? 0 : this.leftTextWidth + this.leftTextMarginRight;
        int measuredWidth = this.gravity != 1 ? (getMeasuredWidth() / 2) - (this.mainTextMaxWidth / 2) : i10 + ((((getMeasuredWidth() - i10) - this.mainTextMaxWidth) - (this.rightText.length() == 0 ? 0 : this.rightTextWidth + this.rightTextMarginLeft)) / 2);
        int i11 = this.mainTextHeight;
        int i12 = measuredHeight - (i11 / 2);
        this.mainTextRect.set(measuredWidth, i12, this.mainTextMaxWidth + measuredWidth, i11 + i12);
        s();
        z();
        p();
    }

    private final boolean C0() {
        return this.maxSelectedPosition < 0 && this.minSelectedPosition < 0;
    }

    private final void D(boolean isDataSetChanged) {
        int i10;
        t();
        A();
        if (isDataSetChanged || (i10 = this.mainTextMaxWidth) <= 0 || this.originTextMaxWidth != i10) {
            x();
        }
        r();
    }

    private final void E() {
        int i10 = this.centerY;
        int i11 = this.itemHeight;
        int i12 = this.dividerOffsetY;
        this.selectedItemTopLimit = (i10 - (i11 / 2)) - i12;
        this.selectedItemBottomLimit = i10 + (i11 / 2) + i12;
    }

    private final int F(Paint paint) {
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        float f10 = fontMetrics.ascent;
        return (int) (f10 + ((fontMetrics.descent - f10) / 2));
    }

    private final void G() {
        if (this.isBoldForSelectedItem) {
            this.mainTextPaint.setTypeface(this.normalTypeface);
        }
    }

    private final int G0(com.zyyoona7.wheel.adapter.a<?> adapter) {
        int i10 = this.maxSelectedPosition;
        return (i10 < 0 || i10 >= adapter.b() || this.mOverRangeMode != OverRangeMode.CANT_SCROLL) ? adapter.b() - 1 : this.maxSelectedPosition;
    }

    private final String H(String oriText) {
        String string;
        if (oriText == null) {
            return "";
        }
        if (StringsKt__StringsKt.trim((CharSequence) oriText).toString().length() == 0) {
            return "";
        }
        if (this.isAutoFitTextSize) {
            return oriText;
        }
        CharSequence charSequenceEllipsize = TextUtils.ellipsize(oriText, this.mainTextPaint, this.mainTextMaxWidth, TextUtils.TruncateAt.END);
        return (charSequenceEllipsize == null || (string = charSequenceEllipsize.toString()) == null) ? "" : string;
    }

    private final int H0(com.zyyoona7.wheel.adapter.a<?> adapter) {
        int i10 = this.maxSelectedPosition;
        int i11 = this.minSelectedPosition;
        if (i11 >= 0 && i10 > i11 && i10 < adapter.b() && this.mOverRangeMode == OverRangeMode.CANT_SCROLL) {
            return this.minSelectedPosition;
        }
        return 0;
    }

    private final void I() {
        if (!this.scroller.isFinished() || !this.adjustScroller.isFinished() || this.isForceFinishScroll || this.isFlingScroll || this.itemHeight == 0) {
            return;
        }
        this.currentScrollState = 0;
        Q0(0);
        cb.c cVar = this.scrollChangedListener;
        if (cVar != null) {
            cVar.d(this, 0);
        }
        int currentPosition = getCurrentPosition();
        if (currentPosition == this.selectedPosition) {
            return;
        }
        this.selectedPosition = currentPosition;
        this.currentScrollPosition = currentPosition;
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar != null) {
            aVar.E(currentPosition);
            if (L(aVar)) {
                O0(aVar, this.selectedPosition);
                cb.b bVar = this.itemSelectedListener;
                if (bVar != null) {
                    bVar.e(this, aVar, this.selectedPosition);
                }
            }
        }
    }

    private final void I0() {
        if (this.wheelAdapter != null) {
            e0();
            requestLayout();
            invalidate();
        }
    }

    private final int J(int position) {
        if (C0()) {
            return position;
        }
        if (this.mOverRangeMode != OverRangeMode.HIDE_ITEM) {
            if (x0(position)) {
                return this.minSelectedPosition;
            }
            com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
            return (aVar == null || !y0(position, aVar)) ? position : this.maxSelectedPosition;
        }
        int i10 = this.minSelectedPosition;
        int i11 = this.maxSelectedPosition;
        if (i10 <= position && i11 >= position) {
            return position - i10;
        }
        return position < i10 ? i10 : i11;
    }

    private final void J0() {
        e0();
        v();
        B();
        if (this.mOverRangeMode != OverRangeMode.HIDE_ITEM) {
            invalidate();
            return;
        }
        this.isDataSetChanged = true;
        requestLayout();
        invalidate();
    }

    private final void K() {
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar == null) {
            INSTANCE.l();
            return;
        }
        if (this.isResetSelectedPosition || aVar.b() <= 0) {
            this.selectedPosition = 0;
            this.currentScrollPosition = 0;
            aVar.E(0);
        } else if (this.selectedPosition >= aVar.b()) {
            int iB = aVar.b() - 1;
            this.selectedPosition = iB;
            this.currentScrollPosition = iB;
            aVar.E(iB);
        }
    }

    private final void K0() {
        if (this.wheelAdapter != null) {
            this.isDataSetChanged = true;
            e0();
            requestLayout();
            invalidate();
        }
    }

    private final boolean L(com.zyyoona7.wheel.adapter.a<?> adapter) {
        if (!C0() && this.mOverRangeMode != OverRangeMode.HIDE_ITEM) {
            if (x0(this.selectedPosition)) {
                setSelectedPosition$default(this, this.minSelectedPosition, false, 0, 6, null);
                return false;
            }
            if (y0(this.selectedPosition, adapter)) {
                setSelectedPosition$default(this, this.maxSelectedPosition, false, 0, 6, null);
                return false;
            }
        }
        return true;
    }

    private final void L0() {
        b1();
        p();
        invalidate();
    }

    private final void M(Canvas canvas, String text, int clipTop, int clipBottom, float rotateX, float offsetY, float offsetZ, int centerToBaselineY) {
        canvas.save();
        canvas.clipRect(this.clipLeft, clipTop, this.clipRight, clipBottom);
        Y(canvas, text, rotateX, offsetY, offsetZ, centerToBaselineY);
        canvas.restore();
    }

    private final void M0() {
        int i10 = this.currentScrollPosition;
        int currentPosition = getCurrentPosition();
        if (i10 == currentPosition || !A0(currentPosition) || this.itemChangedPosition == currentPosition) {
            return;
        }
        N0(i10, currentPosition);
        cb.a aVar = this.itemPositionChangedListener;
        if (aVar != null) {
            aVar.a(this, i10, currentPosition);
        }
        R0();
        this.currentScrollPosition = currentPosition;
        this.itemChangedPosition = currentPosition;
    }

    private final void N(Canvas canvas, String text, int clipTop, int clipBottom, int item2CenterOffsetY, int centerToBaselineY) {
        canvas.save();
        canvas.clipRect(this.clipLeft, clipTop, this.clipRight, clipBottom);
        canvas.drawText(text, 0, text.length(), this.textDrawStartX, (this.centerY + item2CenterOffsetY) - centerToBaselineY, (Paint) this.mainTextPaint);
        canvas.restore();
    }

    @JvmStatic
    @NotNull
    public static final CurvedArcDirection O(int i10) {
        return INSTANCE.b(i10);
    }

    @JvmStatic
    @NotNull
    public static final DividerType P(int i10) {
        return INSTANCE.c(i10);
    }

    @JvmStatic
    @NotNull
    public static final Paint.Align Q(int i10) {
        return INSTANCE.d(i10);
    }

    private final void R() {
        if (B0() || this.isCyclic) {
            return;
        }
        int i10 = this.scrollOffsetY;
        int i11 = this.minScrollY;
        if (i10 < i11) {
            this.scrollOffsetY = i11;
            return;
        }
        int i12 = this.maxScrollY;
        if (i10 > i12) {
            this.scrollOffsetY = i12;
        }
    }

    private final void R0() {
        if (this.isSoundEffect) {
            getSoundHelper().d();
        }
    }

    @JvmStatic
    public static final int S(int i10) {
        return INSTANCE.e(i10);
    }

    private final int T() {
        int i10 = this.itemHeight;
        if (i10 > 0) {
            return i10;
        }
        return 1;
    }

    private final void T0(int position) {
        removeCallbacks(this.selectedPositionRunnable);
        c cVar = new c(position);
        this.selectedPositionRunnable = cVar;
        post(cVar);
    }

    private final void U(int distance) {
        this.scrollOffsetY += distance;
        R();
    }

    private final void U0() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
        }
        this.velocityTracker = null;
    }

    @JvmStatic
    protected static final int V(float f10) {
        return INSTANCE.f(f10);
    }

    private final void V0() {
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar != null) {
            getResizeArray().clear();
            int iB = aVar.b();
            for (int i10 = 0; i10 < iB; i10++) {
                String strD = aVar.d(aVar.c(i10));
                int iMeasureText = (int) this.mainTextPaint.measureText(strD);
                if (iMeasureText > this.mainTextMaxWidth) {
                    getResizeArray().put(i10, Float.valueOf(Y0(strD, iMeasureText)));
                }
            }
            this.mainTextPaint.setTextSize(this.textSize);
        }
    }

    private final void W(Canvas canvas) {
        if (this.isShowCurtain) {
            this.normalPaint.setColor(this.curtainColor);
            canvas.drawRect(this.clipLeft, this.selectedItemTopLimit, this.clipRight, this.selectedItemBottomLimit, this.normalPaint);
        }
    }

    private final void W0(OverRangeMode overRangeMode) {
        OverRangeMode overRangeMode2 = this.mOverRangeMode;
        if (overRangeMode2 == OverRangeMode.HIDE_ITEM || overRangeMode != overRangeMode2) {
            com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
            if (aVar != null) {
                aVar.l(-1, -1);
            }
            K0();
        }
        this.mOverRangeMode = overRangeMode;
    }

    private final void X(Canvas canvas, int index, int scrolledOffset, int scrolledItem) {
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        String strH = H(aVar != null ? aVar.e(index) : null);
        if (strH == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
        }
        if (StringsKt__StringsKt.trim((CharSequence) strH).toString().length() == 0) {
            return;
        }
        int height = ((getHeight() - getPaddingTop()) - getPaddingBottom()) / 2;
        int i10 = ((index - scrolledItem) * this.itemHeight) - scrolledOffset;
        double d10 = height;
        if (Math.abs(i10) > (3.141592653589793d * d10) / ((double) 2)) {
            return;
        }
        double d11 = ((double) i10) / d10;
        float degrees = (float) Math.toDegrees(-d11);
        float fSin = (float) (Math.sin(d11) * d10);
        float fCos = (float) ((((double) 1) - Math.cos(d11)) * d10);
        int iCos = (int) (Math.cos(d11) * ((double) 255));
        int i11 = this.textDrawStartX;
        int iG0 = g0(index);
        if (Math.abs(i10) <= 0) {
            this.mainTextPaint.setColor(this.selectedTextColor);
            this.mainTextPaint.setAlpha(255);
            M(canvas, strH, this.selectedItemTopLimit, this.selectedItemBottomLimit, degrees, fSin, fCos, iG0);
        } else {
            int i12 = this.itemHeight;
            if (1 <= i10 && i12 > i10) {
                this.mainTextPaint.setColor(this.selectedTextColor);
                this.mainTextPaint.setAlpha(255);
                M(canvas, strH, this.selectedItemTopLimit, this.selectedItemBottomLimit, degrees, fSin, fCos, iG0);
                this.mainTextPaint.setColor(this.normalTextColor);
                this.mainTextPaint.setAlpha(iCos);
                float textSize = this.mainTextPaint.getTextSize();
                this.mainTextPaint.setTextSize(this.refractRatio * textSize);
                G();
                M(canvas, strH, this.selectedItemBottomLimit, this.clipBottom, degrees, fSin, fCos, F(this.mainTextPaint));
                this.mainTextPaint.setTextSize(textSize);
                X0();
            } else if (i10 >= 0 || i10 <= (-i12)) {
                this.mainTextPaint.setColor(this.normalTextColor);
                this.mainTextPaint.setAlpha(iCos);
                float textSize2 = this.mainTextPaint.getTextSize();
                this.mainTextPaint.setTextSize(this.refractRatio * textSize2);
                G();
                M(canvas, strH, this.clipTop, this.clipBottom, degrees, fSin, fCos, F(this.mainTextPaint));
                this.mainTextPaint.setTextSize(textSize2);
                X0();
            } else {
                this.mainTextPaint.setColor(this.selectedTextColor);
                this.mainTextPaint.setAlpha(255);
                M(canvas, strH, this.selectedItemTopLimit, this.selectedItemBottomLimit, degrees, fSin, fCos, iG0);
                this.mainTextPaint.setColor(this.normalTextColor);
                this.mainTextPaint.setAlpha(iCos);
                float textSize3 = this.mainTextPaint.getTextSize();
                this.mainTextPaint.setTextSize(this.refractRatio * textSize3);
                G();
                M(canvas, strH, this.clipTop, this.selectedItemTopLimit, degrees, fSin, fCos, F(this.mainTextPaint));
                this.mainTextPaint.setTextSize(textSize3);
                X0();
            }
        }
        if (this.isAutoFitTextSize) {
            this.mainTextPaint.setTextSize(this.textSize);
            this.textDrawStartX = i11;
        }
    }

    private final void X0() {
        if (this.isBoldForSelectedItem) {
            this.mainTextPaint.setTypeface(this.boldTypeface);
        }
    }

    private final void Y(Canvas canvas, String text, float rotateX, float offsetY, float offsetZ, int centerToBaselineY) {
        float f10;
        float f11;
        float f12;
        this.cameraForCurved.save();
        this.cameraForCurved.translate(0.0f, 0.0f, offsetZ);
        this.cameraForCurved.rotateX(rotateX);
        this.cameraForCurved.getMatrix(this.matrixForCurved);
        this.cameraForCurved.restore();
        int iCenterX = this.mainTextRect.centerX();
        int i10 = com.zyyoona7.wheel.b.$EnumSwitchMapping$2[this.curvedArcDirection.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                f12 = iCenterX;
            } else {
                f10 = iCenterX;
                f11 = 1 - this.curvedArcDirectionFactor;
            }
            float f13 = this.centerY + offsetY;
            this.matrixForCurved.preTranslate(-f12, -f13);
            this.matrixForCurved.postTranslate(f12, f13);
            canvas.concat(this.matrixForCurved);
            canvas.drawText(text, 0, text.length(), this.textDrawStartX, f13 - centerToBaselineY, (Paint) this.mainTextPaint);
        }
        f10 = iCenterX;
        f11 = 1 + this.curvedArcDirectionFactor;
        f12 = f10 * f11;
        float f14 = this.centerY + offsetY;
        this.matrixForCurved.preTranslate(-f12, -f14);
        this.matrixForCurved.postTranslate(f12, f14);
        canvas.concat(this.matrixForCurved);
        canvas.drawText(text, 0, text.length(), this.textDrawStartX, f14 - centerToBaselineY, (Paint) this.mainTextPaint);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0031 A[PHI: r0
      0x0031: PHI (r0v6 float) = (r0v5 float), (r0v9 float) binds: [B:8:0x0024, B:10:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:17:0x0042 A[LOOP:0: B:7:0x0019->B:17:0x0042, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0038 A[SYNTHETIC] */
    private final float Y0(String measureText, int textWidth) {
        float f10;
        float f11 = ((this.mainTextMaxWidth * 1.0f) / textWidth) * this.textSize;
        int i10 = this.minTextSize;
        if (f11 < i10) {
            return i10;
        }
        boolean z10 = true;
        while (true) {
            this.mainTextPaint.setTextSize(f11);
            float fMeasureText = this.mainTextPaint.measureText(measureText);
            if (!z10) {
                f11--;
                int i11 = this.minTextSize;
                if (f11 < i11) {
                    f10 = i11;
                    break;
                }
                if (fMeasureText <= this.mainTextMaxWidth) {
                    f10 = f11;
                    break;
                }
                z10 = false;
            } else {
                if (fMeasureText <= this.mainTextMaxWidth) {
                    f10 = f11;
                    break;
                }
                z10 = false;
            }
        }
        this.mainTextPaint.setTextSize(this.textSize);
        return f10;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0063 A[PHI: r2 r3
      0x0063: PHI (r2v12 float) = (r2v9 float), (r2v20 float) binds: [B:23:0x007a, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]
      0x0063: PHI (r3v3 int) = (r3v2 int), (r3v12 int) binds: [B:23:0x007a, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:17:0x0065 A[PHI: r1 r2
      0x0065: PHI (r1v10 int) = (r1v9 int), (r1v18 int) binds: [B:23:0x007a, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]
      0x0065: PHI (r2v11 float) = (r2v9 float), (r2v20 float) binds: [B:23:0x007a, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]] */
    private final void Z(Canvas canvas) {
        int i10;
        float f10;
        int i11;
        float f11;
        if (this.isShowDivider) {
            this.normalPaint.setColor(this.dividerColor);
            float strokeWidth = this.normalPaint.getStrokeWidth();
            this.normalPaint.setStrokeJoin(Paint.Join.ROUND);
            this.normalPaint.setStrokeCap(this.dividerCap);
            this.normalPaint.setStrokeWidth(this.dividerHeight);
            int i12 = com.zyyoona7.wheel.b.$EnumSwitchMapping$1[this.dividerType.ordinal()];
            if (i12 == 1) {
                Rect rect = this.mainTextRect;
                int i13 = rect.left;
                int i14 = this.dividerPadding;
                int i15 = i13 - i14;
                i10 = rect.right + i14;
                int i16 = this.clipLeft;
                f10 = i15 < i16 ? i16 : i15;
                i11 = this.clipRight;
                if (i10 > i11) {
                    f11 = i11;
                } else {
                    f11 = i10;
                }
            } else if (i12 != 2) {
                f10 = this.clipLeft;
                f11 = this.clipRight;
            } else {
                Rect rect2 = this.mainTextRect;
                int i17 = (rect2.left - this.leftTextWidth) - this.leftTextMarginRight;
                int i18 = this.dividerPadding;
                int i19 = i17 - i18;
                i10 = rect2.right + this.rightTextWidth + this.rightTextMarginLeft + i18;
                int i20 = this.clipLeft;
                f10 = i19 < i20 ? i20 : i19;
                i11 = this.clipRight;
                if (i10 > i11) {
                    f11 = i11;
                } else {
                    f11 = i10;
                }
            }
            int i21 = this.selectedItemTopLimit;
            float f12 = f10;
            float f13 = f11;
            canvas.drawLine(f12, i21, f13, i21, this.normalPaint);
            int i22 = this.selectedItemBottomLimit;
            canvas.drawLine(f12, i22, f13, i22, this.normalPaint);
            this.normalPaint.setStrokeWidth(strokeWidth);
        }
    }

    @JvmStatic
    protected static final int Z0(float f10) {
        return INSTANCE.m(f10);
    }

    private final void a0(Canvas canvas) {
        if (this.leftText.length() == 0) {
            return;
        }
        this.leftTextPaint.setTextSize(this.leftTextSize);
        this.leftTextPaint.setColor(this.leftTextColor);
        int iF = F(this.leftTextPaint);
        CharSequence charSequence = this.leftText;
        canvas.drawText(charSequence, 0, charSequence.length(), this.leftTextRect.centerX(), this.leftTextRect.centerY() - iF, this.leftTextPaint);
    }

    private final void a1(OverScroller scroller) {
        int i10 = this.scrollOffsetY;
        int currY = scroller.getCurrY();
        this.scrollOffsetY = currY;
        if (i10 != currY) {
            this.currentScrollState = 2;
            Q0(2);
            cb.c cVar = this.scrollChangedListener;
            if (cVar != null) {
                cVar.d(this, 2);
            }
        }
        s0();
    }

    private final void b0(Canvas canvas) {
        if (this.rightText.length() == 0) {
            return;
        }
        this.rightTextPaint.setTextSize(this.rightTextSize);
        this.rightTextPaint.setColor(this.rightTextColor);
        int iF = F(this.rightTextPaint);
        CharSequence charSequence = this.rightText;
        canvas.drawText(charSequence, 0, charSequence.length(), this.rightTextRect.centerX(), this.rightTextRect.centerY() - iF, this.rightTextPaint);
    }

    private final void b1() {
        this.mainTextPaint.setTextAlign(this.textAlign);
    }

    private final void c0(Canvas canvas) {
        if (this.drawDebugRectEnabled) {
            int color = this.leftTextPaint.getColor();
            this.leftTextPaint.setColor(-16776961);
            canvas.drawRect(this.mainTextRect, this.leftTextPaint);
            this.leftTextPaint.setColor(SupportMenu.CATEGORY_MASK);
            canvas.drawRect(this.leftTextRect, this.leftTextPaint);
            this.leftTextPaint.setColor(Constants.LEVEL_SDK);
            canvas.drawRect(this.rightTextRect, this.leftTextPaint);
            this.leftTextPaint.setColor(color);
        }
        a0(canvas);
        b0(canvas);
    }

    private final void d() {
        this.isFlingScroll = false;
        if (!this.scroller.isFinished()) {
            this.scroller.abortAnimation();
            a1(this.scroller);
            l(false);
        }
        if (this.adjustScroller.isFinished()) {
            return;
        }
        this.adjustScroller.abortAnimation();
        a1(this.adjustScroller);
        l(false);
    }

    private final void d0(Canvas canvas, int index, int scrolledOffset, int scrolledItem) {
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        String strH = H(aVar != null ? aVar.e(index) : null);
        if (strH == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
        }
        if (StringsKt__StringsKt.trim((CharSequence) strH).toString().length() == 0) {
            return;
        }
        int i10 = ((index - scrolledItem) * this.itemHeight) - scrolledOffset;
        int i11 = this.textDrawStartX;
        int iG0 = g0(index);
        if (Math.abs(i10) <= 0) {
            this.mainTextPaint.setColor(this.selectedTextColor);
            N(canvas, strH, this.selectedItemTopLimit, this.selectedItemBottomLimit, i10, iG0);
        } else {
            int i12 = this.itemHeight;
            if (1 <= i10 && i12 > i10) {
                this.mainTextPaint.setColor(this.selectedTextColor);
                N(canvas, strH, this.selectedItemTopLimit, this.selectedItemBottomLimit, i10, iG0);
                this.mainTextPaint.setColor(this.normalTextColor);
                float textSize = this.mainTextPaint.getTextSize();
                this.mainTextPaint.setTextSize(this.refractRatio * textSize);
                G();
                N(canvas, strH, this.selectedItemBottomLimit, this.clipBottom, i10, iG0);
                this.mainTextPaint.setTextSize(textSize);
                X0();
            } else if (i10 >= 0 || i10 <= (-i12)) {
                this.mainTextPaint.setColor(this.normalTextColor);
                float textSize2 = this.mainTextPaint.getTextSize();
                this.mainTextPaint.setTextSize(this.refractRatio * textSize2);
                G();
                N(canvas, strH, this.clipTop, this.clipBottom, i10, iG0);
                this.mainTextPaint.setTextSize(textSize2);
                X0();
            } else {
                this.mainTextPaint.setColor(this.selectedTextColor);
                N(canvas, strH, this.selectedItemTopLimit, this.selectedItemBottomLimit, i10, iG0);
                this.mainTextPaint.setColor(this.normalTextColor);
                float textSize3 = this.mainTextPaint.getTextSize();
                this.mainTextPaint.setTextSize(this.refractRatio * textSize3);
                G();
                N(canvas, strH, this.clipTop, this.selectedItemTopLimit, i10, iG0);
                this.mainTextPaint.setTextSize(textSize3);
                X0();
            }
        }
        if (this.isAutoFitTextSize) {
            this.mainTextPaint.setTextSize(this.textSize);
            this.textDrawStartX = i11;
        }
    }

    private final void e0() {
        f0(false);
    }

    private final void f0(boolean isMarkForceFinish) {
        this.isFlingScroll = false;
        if (!this.scroller.isFinished()) {
            this.scroller.forceFinished(true);
            a1(this.scroller);
            l(false);
        }
        if (!this.adjustScroller.isFinished()) {
            this.adjustScroller.forceFinished(true);
            a1(this.adjustScroller);
            l(false);
        }
        if (isMarkForceFinish) {
            this.isForceFinishScroll = true;
        }
    }

    private final int g0(int index) {
        if (!this.isAutoFitTextSize) {
            return F(this.mainTextPaint);
        }
        Float f10 = getResizeArray().get(index);
        if (f10 == null) {
            return F(this.mainTextPaint);
        }
        this.mainTextPaint.setTextSize(f10.floatValue());
        return F(this.mainTextPaint);
    }

    private final int getCurrentPosition() {
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar == null) {
            INSTANCE.l();
            return -1;
        }
        if (aVar.b() == 0) {
            return -1;
        }
        int i10 = this.scrollOffsetY;
        int iT = (i10 < 0 ? (i10 - (this.itemHeight / 2)) / T() : (i10 + (this.itemHeight / 2)) / T()) % aVar.b();
        return iT < 0 ? iT + aVar.b() : iT;
    }

    private final SparseArray<Float> getResizeArray() {
        return (SparseArray) this.resizeArray.getValue();
    }

    private final db.a getSoundHelper() {
        return (db.a) this.soundHelper.getValue();
    }

    private final int i0(int position) {
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar == null) {
            INSTANCE.l();
            return 0;
        }
        if (aVar.b() == 0) {
            return 0;
        }
        int iB = aVar.b();
        if (this.scrollOffsetY < 0) {
            position -= iB;
        }
        if (Math.abs(position) < iB) {
            position %= aVar.b();
        }
        return position * this.itemHeight;
    }

    private final void k(int deltaY) {
        this.adjustScroller.startScroll(0, this.scrollOffsetY, 0, deltaY, 250);
    }

    private final void l(boolean isAnimate) {
        int iT = this.scrollOffsetY % T();
        if (iT != 0) {
            int iO = o(iT);
            if (isAnimate) {
                k(iO);
            } else {
                this.scrollOffsetY += iO;
            }
        }
        s0();
    }

    private final int m(int visibleItems) {
        return Math.abs(((visibleItems / 2) * 2) + 1);
    }

    public static /* synthetic */ int m0(WheelView wheelView, Object obj, boolean z10, int i10, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return wheelView.l0(obj, z10);
    }

    private final int n(int dataHeight, int deltaDistance) {
        if (Math.abs(deltaDistance) < dataHeight / 2) {
            return deltaDistance;
        }
        int iAbs = dataHeight - Math.abs(deltaDistance);
        return deltaDistance < 0 ? iAbs : -iAbs;
    }

    private final void n0(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.WheelView);
        Intrinsics.checkExpressionValueIsNotNull(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…s, R.styleable.WheelView)");
        int i10 = R.styleable.WheelView_wv_textSize;
        int i11 = S2;
        setTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(i10, i11));
        setAutoFitTextSize(typedArrayObtainStyledAttributes.getBoolean(R.styleable.WheelView_wv_autoFitTextSize, false));
        setMinTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.WheelView_wv_minTextSize, T2));
        Companion companion = INSTANCE;
        setTextAlign(companion.d(typedArrayObtainStyledAttributes.getInt(R.styleable.WheelView_wv_textAlign, 1)));
        int i12 = R.styleable.WheelView_wv_textPadding;
        int i13 = U2;
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(i12, i13);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.WheelView_wv_textPaddingLeft, i13);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.WheelView_wv_textPaddingRight, i13);
        if (dimensionPixelSize > 0) {
            setTextPaddingLeft(dimensionPixelSize);
            setTextPaddingRight(dimensionPixelSize);
        } else {
            setTextPaddingLeft(dimensionPixelSize2);
            setTextPaddingRight(dimensionPixelSize3);
        }
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.WheelView_wv_leftText);
        if (string == null) {
            string = "";
        }
        setLeftText(string);
        String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.WheelView_wv_rightText);
        setRightText(string2 != null ? string2 : "");
        setLeftTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.WheelView_wv_leftTextSize, i11));
        setRightTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.WheelView_wv_rightTextSize, i11));
        setLeftTextMarginRight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.WheelView_wv_leftTextMarginRight, i13));
        setRightTextMarginLeft(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.WheelView_wv_rightTextMarginLeft, i13));
        setLeftTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.WheelView_wv_leftTextColor, -16777216));
        setRightTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.WheelView_wv_rightTextColor, -16777216));
        int i14 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelView_wv_leftTextGravity, 0);
        int i15 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelView_wv_rightTextGravity, 0);
        setLeftTextGravity(companion.e(i14));
        setRightTextGravity(companion.e(i15));
        setGravity(typedArrayObtainStyledAttributes.getInt(R.styleable.WheelView_android_gravity, 17));
        setNormalTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.WheelView_wv_normalTextColor, W2));
        setSelectedTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.WheelView_wv_selectedTextColor, -16777216));
        setLineSpacing(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.WheelView_wv_lineSpacing, R2));
        setVisibleItems(typedArrayObtainStyledAttributes.getInt(R.styleable.WheelView_wv_visibleItems, 5));
        setVisibleItems(m(this.visibleItems));
        p0(typedArrayObtainStyledAttributes.getInt(R.styleable.WheelView_wv_selectedPosition, 0), typedArrayObtainStyledAttributes.getInt(R.styleable.WheelView_wv_minSelectedPosition, -1), typedArrayObtainStyledAttributes.getInt(R.styleable.WheelView_wv_maxSelectedPosition, -1));
        setCyclic(typedArrayObtainStyledAttributes.getBoolean(R.styleable.WheelView_wv_cyclic, false));
        setShowDivider(typedArrayObtainStyledAttributes.getBoolean(R.styleable.WheelView_wv_showDivider, false));
        setDividerType(companion.c(typedArrayObtainStyledAttributes.getInt(R.styleable.WheelView_wv_dividerType, 0)));
        setDividerHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.WheelView_wv_dividerHeight, V2));
        setDividerColor(typedArrayObtainStyledAttributes.getColor(R.styleable.WheelView_wv_dividerColor, -16777216));
        setDividerPadding(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.WheelView_wv_dividerPadding, i13));
        setDividerOffsetY(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.WheelView_wv_dividerOffsetY, 0));
        setShowCurtain(typedArrayObtainStyledAttributes.getBoolean(R.styleable.WheelView_wv_isShowCurtain, false));
        setCurtainColor(typedArrayObtainStyledAttributes.getColor(R.styleable.WheelView_wv_curtainColor, 0));
        setCurved(typedArrayObtainStyledAttributes.getBoolean(R.styleable.WheelView_wv_curved, true));
        setCurvedArcDirection(companion.b(typedArrayObtainStyledAttributes.getInt(R.styleable.WheelView_wv_curvedArcDirection, 1)));
        setCurvedArcDirectionFactor(typedArrayObtainStyledAttributes.getFloat(R.styleable.WheelView_wv_curvedArcDirectionFactor, 0.75f));
        setRefractRatio(typedArrayObtainStyledAttributes.getFloat(R.styleable.WheelView_wv_refractRatio, 1.0f));
        float f10 = this.refractRatio;
        if (f10 > 1.0f || f10 < 0.0f) {
            setRefractRatio(1.0f);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private final int o(int remainder) {
        int iAbs = Math.abs(remainder);
        int i10 = this.itemHeight;
        if (iAbs > i10 / 2) {
            return this.scrollOffsetY < 0 ? (-i10) - remainder : i10 - remainder;
        }
        return -remainder;
    }

    private final void o0() {
        AudioManager audioManager = (AudioManager) getContext().getSystemService("audio");
        if (audioManager == null) {
            getSoundHelper().f(0.3f);
            return;
        }
        getSoundHelper().f((audioManager.getStreamVolume(3) * 1.0f) / audioManager.getStreamMaxVolume(3));
    }

    private final void p() {
        int iCenterX;
        int i10 = com.zyyoona7.wheel.b.$EnumSwitchMapping$0[this.textAlign.ordinal()];
        if (i10 != 1) {
            iCenterX = i10 != 2 ? this.mainTextRect.centerX() : this.mainTextRect.right;
        } else {
            iCenterX = this.mainTextRect.left;
        }
        this.textDrawStartX = iCenterX;
    }

    private final int q(int position) {
        if (!this.isCyclic) {
            return (position * this.itemHeight) - this.scrollOffsetY;
        }
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        int iG = aVar != null ? aVar.g() : 0;
        int i10 = this.itemHeight;
        int i11 = iG * i10;
        int i12 = this.scrollOffsetY;
        int i13 = i12 % (i11 == 0 ? 1 : i11);
        int i14 = position * i10;
        if (i12 < 0 && i13 != 0) {
            i14 = -(i11 - i14);
        }
        return n(i11, i14 - i13);
    }

    private final void q0(Context context) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        Intrinsics.checkExpressionValueIsNotNull(viewConfiguration, "viewConfiguration");
        this.maxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.minFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        b1();
    }

    private final void r() {
        this.itemHeight = (int) ((this.mainTextPaint.getFontMetrics().bottom - this.mainTextPaint.getFontMetrics().top) + this.lineSpacing);
    }

    private final void r0() {
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
    }

    private final void s() {
        int i10;
        int iCenterY;
        int i11;
        if (this.leftText.length() == 0) {
            return;
        }
        Rect rect = this.mainTextRect;
        int i12 = (rect.left - this.leftTextMarginRight) - this.leftTextWidth;
        int i13 = this.leftTextGravity;
        if (i13 != 48) {
            if (i13 != 80) {
                iCenterY = rect.centerY();
                i11 = this.leftTextHeight / 2;
            } else {
                iCenterY = rect.bottom;
                i11 = this.leftTextHeight;
            }
            i10 = iCenterY - i11;
        } else {
            i10 = rect.top;
        }
        this.leftTextRect.set(i12, i10, this.leftTextWidth + i12, this.leftTextHeight + i10);
    }

    private final void s0() {
        int i10 = this.scrollOffsetY;
        if (i10 != this.scrolledY) {
            this.scrolledY = i10;
            P0(i10);
            cb.c cVar = this.scrollChangedListener;
            if (cVar != null) {
                cVar.a(this, this.scrollOffsetY);
            }
            M0();
            invalidate();
        }
    }

    public static /* synthetic */ void setSelectableRange$default(WheelView wheelView, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setSelectableRange");
        }
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        wheelView.setSelectableRange(i10, i11);
    }

    public static /* synthetic */ void setSelectedPosition$default(WheelView wheelView, int i10, boolean z10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setSelectedPosition");
        }
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        if ((i12 & 4) != 0) {
            i11 = 250;
        }
        wheelView.setSelectedPosition(i10, z10, i11);
    }

    public static /* synthetic */ void setSelectedRange$default(WheelView wheelView, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setSelectedRange");
        }
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        wheelView.setSelectedRange(i10, i11);
    }

    public static /* synthetic */ void setTypeface$default(WheelView wheelView, Typeface typeface, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setTypeface");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        wheelView.setTypeface(typeface, z10);
    }

    private final void t() {
        if (this.leftText.length() == 0) {
            this.leftTextWidth = 0;
            this.leftTextHeight = 0;
        } else {
            this.leftTextPaint.setTextSize(this.leftTextSize);
            this.leftTextWidth = (int) this.leftTextPaint.measureText(this.leftText.toString());
            this.leftTextHeight = (int) (this.leftTextPaint.getFontMetrics().bottom - this.leftTextPaint.getFontMetrics().top);
        }
    }

    private final void v() {
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar == null) {
            INSTANCE.l();
        } else {
            this.minScrollY = this.isCyclic ? Integer.MIN_VALUE : H0(aVar) * this.itemHeight;
            this.maxScrollY = this.isCyclic ? Integer.MAX_VALUE : G0(aVar) * this.itemHeight;
        }
    }

    private final int w(String itemText) {
        return MathKt__MathJVMKt.roundToInt(this.mainTextPaint.measureText(new Regex("\\d").replace(itemText, String.valueOf(y()))));
    }

    private final void x() {
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar == null) {
            INSTANCE.l();
            return;
        }
        if (aVar.b() == 0) {
            return;
        }
        this.mainTextMaxWidth = 0;
        this.mainTextPaint.setTextSize(this.textSize);
        MeasureType measureType = this.maxTextWidthMeasureType;
        if (measureType == MeasureType.SAME_WIDTH) {
            this.mainTextMaxWidth = (int) this.mainTextPaint.measureText(aVar.d(aVar.c(0)));
        } else if (measureType == MeasureType.SAME_WIDTH_WITH_NUM) {
            this.mainTextMaxWidth = w(aVar.d(aVar.c(0)));
        } else {
            int iB = aVar.b();
            int length = -1;
            for (int i10 = 0; i10 < iB; i10++) {
                String strD = aVar.d(aVar.c(i10));
                MeasureType measureType2 = this.maxTextWidthMeasureType;
                if ((measureType2 != MeasureType.MAX_LENGTH && measureType2 != MeasureType.MAX_LENGTH_WITH_NUM) || strD.length() > length) {
                    length = strD.length();
                    if (this.maxTextWidthMeasureType == MeasureType.MAX_LENGTH_WITH_NUM) {
                        strD = new Regex("\\d").replace(strD, String.valueOf(y()));
                    }
                    this.mainTextMaxWidth = Math.max((int) this.mainTextPaint.measureText(strD), this.mainTextMaxWidth);
                }
            }
        }
        this.originTextMaxWidth = this.mainTextMaxWidth;
        this.mainTextHeight = (int) (this.mainTextPaint.getFontMetrics().bottom - this.mainTextPaint.getFontMetrics().top);
    }

    private final boolean x0(int position) {
        int i10 = this.minSelectedPosition;
        return i10 >= 0 && position < i10;
    }

    private final int y() {
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 <= 9; i12++) {
            int iRoundToInt = MathKt__MathJVMKt.roundToInt(this.mainTextPaint.measureText(String.valueOf(i12)));
            if (iRoundToInt > i11) {
                i10 = i12;
                i11 = iRoundToInt;
            }
        }
        return i10;
    }

    private final boolean y0(int position, com.zyyoona7.wheel.adapter.a<?> adapter) {
        int i10 = this.maxSelectedPosition;
        return i10 >= 0 && i10 < adapter.b() && position > this.maxSelectedPosition;
    }

    private final void z() {
        int i10;
        int iCenterY;
        int i11;
        if (this.rightText.length() == 0) {
            return;
        }
        Rect rect = this.mainTextRect;
        int i12 = rect.left + this.mainTextMaxWidth + this.rightTextMarginLeft;
        int i13 = this.rightTextGravity;
        if (i13 != 48) {
            if (i13 != 80) {
                iCenterY = rect.centerY();
                i11 = this.rightTextHeight / 2;
            } else {
                iCenterY = rect.bottom;
                i11 = this.rightTextHeight;
            }
            i10 = iCenterY - i11;
        } else {
            i10 = rect.top;
        }
        this.rightTextRect.set(i12, i10, this.rightTextWidth + i12, this.rightTextHeight + i10);
    }

    /* JADX INFO: renamed from: D0, reason: from getter */
    public final boolean getIsShowCurtain() {
        return this.isShowCurtain;
    }

    /* JADX INFO: renamed from: E0, reason: from getter */
    public final boolean getIsShowDivider() {
        return this.isShowDivider;
    }

    /* JADX INFO: renamed from: F0, reason: from getter */
    public final boolean getIsSoundEffect() {
        return this.isSoundEffect;
    }

    protected void N0(int oldPosition, int newPosition) {
    }

    protected void O0(@NotNull com.zyyoona7.wheel.adapter.a<?> adapter, int position) {
    }

    protected void P0(int scrollOffsetY) {
    }

    protected void Q0(int state) {
    }

    @Override // com.zyyoona7.wheel.adapter.a.InterfaceC1145a
    public void a() {
        e0();
        I();
    }

    public void b() {
        HashMap map = this.P2;
        if (map != null) {
            map.clear();
        }
    }

    public View c(int i10) {
        if (this.P2 == null) {
            this.P2 = new HashMap();
        }
        View view = (View) this.P2.get(Integer.valueOf(i10));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i10);
        this.P2.put(Integer.valueOf(i10), viewFindViewById);
        return viewFindViewById;
    }

    @Nullable
    public final com.zyyoona7.wheel.adapter.a<?> getAdapter() {
        return this.wheelAdapter;
    }

    public final int getCurtainColor() {
        return this.curtainColor;
    }

    @NotNull
    public final CurvedArcDirection getCurvedArcDirection() {
        return this.curvedArcDirection;
    }

    public final float getCurvedArcDirectionFactor() {
        return this.curvedArcDirectionFactor;
    }

    @NotNull
    public final Paint.Cap getDividerCap() {
        return this.dividerCap;
    }

    public final int getDividerColor() {
        return this.dividerColor;
    }

    public final int getDividerHeight() {
        return this.dividerHeight;
    }

    public final int getDividerOffsetY() {
        return this.dividerOffsetY;
    }

    public final int getDividerPadding() {
        return this.dividerPadding;
    }

    @NotNull
    public final DividerType getDividerType() {
        return this.dividerType;
    }

    public final boolean getDrawDebugRectEnabled() {
        return this.drawDebugRectEnabled;
    }

    public final int getGravity() {
        return this.gravity;
    }

    public final int getItemCount() {
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar != null) {
            return aVar.b();
        }
        return 0;
    }

    protected final int getItemHeight() {
        return this.itemHeight;
    }

    @NotNull
    public final CharSequence getLeftText() {
        return this.leftText;
    }

    public final int getLeftTextColor() {
        return this.leftTextColor;
    }

    public final int getLeftTextGravity() {
        return this.leftTextGravity;
    }

    public final int getLeftTextMarginRight() {
        return this.leftTextMarginRight;
    }

    public final int getLeftTextSize() {
        return this.leftTextSize;
    }

    public final int getLineSpacing() {
        return this.lineSpacing;
    }

    @NotNull
    public final MeasureType getMaxTextWidthMeasureType() {
        return this.maxTextWidthMeasureType;
    }

    public final int getMinTextSize() {
        return this.minTextSize;
    }

    public final int getNormalTextColor() {
        return this.normalTextColor;
    }

    public final float getRefractRatio() {
        return this.refractRatio;
    }

    @NotNull
    public final CharSequence getRightText() {
        return this.rightText;
    }

    public final int getRightTextColor() {
        return this.rightTextColor;
    }

    public final int getRightTextGravity() {
        return this.rightTextGravity;
    }

    public final int getRightTextMarginLeft() {
        return this.rightTextMarginLeft;
    }

    public final int getRightTextSize() {
        return this.rightTextSize;
    }

    @Nullable
    public final <T> T getSelectedItem() {
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar != null) {
            return (T) aVar.s();
        }
        return null;
    }

    public final int getSelectedPosition() {
        a();
        if (this.mOverRangeMode != OverRangeMode.HIDE_ITEM) {
            return this.selectedPosition;
        }
        int i10 = this.minSelectedPosition;
        int i11 = this.maxSelectedPosition;
        int i12 = this.selectedPosition;
        if (i10 <= i12 && i11 >= i12) {
            return i10 + i12;
        }
        return i12 < i10 ? i10 : i11;
    }

    public final int getSelectedTextColor() {
        return this.selectedTextColor;
    }

    public final float getSoundVolume() {
        return getSoundHelper().a();
    }

    @NotNull
    public final Paint.Align getTextAlign() {
        return this.textAlign;
    }

    public final int getTextPaddingLeft() {
        return this.textPaddingLeft;
    }

    public final int getTextPaddingRight() {
        return this.textPaddingRight;
    }

    public final int getTextSize() {
        return this.textSize;
    }

    public final int getVisibleItems() {
        return this.visibleItems;
    }

    @Nullable
    public final <V> V h0(int position) {
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar != null) {
            return (V) aVar.p(position);
        }
        return null;
    }

    public final boolean j0() {
        return (this.itemIndexer == null && this.itemIndexerBlock == null) ? false : true;
    }

    @JvmOverloads
    public int k0(@Nullable Object obj) {
        return m0(this, obj, false, 2, null);
    }

    @JvmOverloads
    public int l0(@Nullable Object item, boolean isCompareFormatText) {
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar != null) {
            return aVar.x(item, isCompareFormatText);
        }
        return -1;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getSoundHelper().e();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0037  */
    /* JADX WARN: Code duplicated, block: B:14:0x003b  */
    /* JADX WARN: Code duplicated, block: B:15:0x003f  */
    @Override // android.view.View
    protected void onDraw(@Nullable Canvas canvas) {
        int i10;
        int i11;
        super.onDraw(canvas);
        if (canvas != null) {
            W(canvas);
            Z(canvas);
            c0(canvas);
            int iT = this.scrollOffsetY / T();
            int iT2 = this.scrollOffsetY % T();
            int i12 = (this.visibleItems + 1) / 2;
            if (iT2 >= 0) {
                if (iT2 > 0) {
                    i10 = iT - i12;
                    i11 = i12 + iT + 1;
                } else {
                    i10 = iT - i12;
                }
                while (i10 < i11) {
                    if (this.isCurved) {
                        X(canvas, i10, iT2, iT);
                    } else {
                        d0(canvas, i10, iT2, iT);
                    }
                    i10++;
                }
            }
            i10 = (iT - i12) - 1;
            i11 = i12 + iT;
            while (i10 < i11) {
                if (this.isCurved) {
                    X(canvas, i10, iT2, iT);
                } else {
                    d0(canvas, i10, iT2, iT);
                }
                i10++;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        CurvedArcDirection curvedArcDirection;
        D(this.isDataSetChanged);
        int paddingTop = this.isCurved ? (int) ((((double) ((this.itemHeight * this.visibleItems) * 2)) / 3.141592653589793d) + ((double) getPaddingTop()) + ((double) getPaddingBottom())) : (this.itemHeight * this.visibleItems) + getPaddingTop() + getPaddingBottom();
        int i10 = this.leftText.length() == 0 ? 0 : this.leftTextWidth + this.leftTextMarginRight;
        int i11 = this.rightText.length() == 0 ? 0 : this.rightTextWidth + this.rightTextMarginLeft;
        int iMax = this.gravity == 1 ? i10 + i11 : Math.max(i10, i11) * 2;
        int paddingLeft = this.mainTextMaxWidth + iMax + this.textPaddingLeft + this.textPaddingRight + getPaddingLeft() + getPaddingRight();
        if (this.isCurved && ((curvedArcDirection = this.curvedArcDirection) == CurvedArcDirection.LEFT || curvedArcDirection == CurvedArcDirection.RIGHT)) {
            int iSin = (int) (Math.sin(0.06544984694978735d) * ((double) paddingTop) * ((double) this.curvedArcDirectionFactor));
            if (paddingLeft <= this.mainTextMaxWidth + iSin) {
                paddingLeft += iSin;
                this.curvedArcWidth = iSin;
            } else {
                this.curvedArcWidth = 0;
            }
        }
        int iResolveSize = View.resolveSize(paddingLeft, widthMeasureSpec);
        if (iResolveSize > 0 && paddingLeft > iResolveSize) {
            this.mainTextMaxWidth = (((((iResolveSize - this.textPaddingLeft) - this.textPaddingRight) - iMax) - getPaddingLeft()) - getPaddingRight()) - this.curvedArcWidth;
            this.isDataSetChanged = true;
        }
        setMeasuredDimension(iResolveSize, View.resolveSize(paddingTop, heightMeasureSpec));
        this.centerY = getMeasuredHeight() / 2;
        this.clipLeft = getPaddingLeft();
        this.clipTop = getPaddingTop();
        this.clipRight = getMeasuredWidth() - getPaddingRight();
        this.clipBottom = getMeasuredHeight() - getPaddingBottom();
        if (this.isAutoFitTextSize && this.isDataSetChanged) {
            V0();
        }
        E();
        C();
        v();
        B();
        R();
        this.isDataSetChanged = false;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@Nullable MotionEvent event) {
        com.zyyoona7.wheel.adapter.a<?> aVar;
        if (!isEnabled() || (aVar = this.wheelAdapter) == null || ((aVar != null && aVar.b() == 0) || event == null)) {
            return super.onTouchEvent(event);
        }
        r0();
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.addMovement(event);
        }
        int actionMasked = event.getActionMasked();
        boolean z10 = false;
        if (actionMasked == 0) {
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            f0(true);
            this.isFlingScroll = false;
            this.lastTouchY = event.getY();
            this.downStartTime = SystemClock.elapsedRealtime();
        } else if (actionMasked == 1) {
            this.isForceFinishScroll = false;
            VelocityTracker velocityTracker2 = this.velocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.computeCurrentVelocity(1000, this.maxFlingVelocity);
            }
            VelocityTracker velocityTracker3 = this.velocityTracker;
            int yVelocity = velocityTracker3 != null ? (int) velocityTracker3.getYVelocity() : this.minFlingVelocity;
            if (Math.abs(yVelocity) > this.minFlingVelocity) {
                e0();
                this.isFlingScroll = true;
                this.scroller.fling(0, this.scrollOffsetY, 0, -yVelocity, 0, 0, this.minScrollY, this.maxScrollY);
            } else {
                int y10 = SystemClock.elapsedRealtime() - this.downStartTime <= 120 ? (int) (event.getY() - this.centerY) : 0;
                int iO = y10 + o((this.scrollOffsetY + y10) % T());
                boolean z11 = iO < 0 && this.scrollOffsetY + iO >= this.minScrollY;
                if (iO > 0 && this.scrollOffsetY + iO <= this.maxScrollY) {
                    z10 = true;
                }
                if (z11 || z10) {
                    k(iO);
                }
            }
            s0();
            ViewCompat.postOnAnimation(this, this);
            U0();
        } else if (actionMasked == 2) {
            float y11 = event.getY();
            float f10 = y11 - this.lastTouchY;
            this.currentScrollState = 1;
            Q0(1);
            cb.c cVar = this.scrollChangedListener;
            if (cVar != null) {
                cVar.d(this, 1);
            }
            if (Math.abs(f10) < 1) {
                return false;
            }
            U((int) (-f10));
            this.lastTouchY = y11;
            s0();
        } else if (actionMasked == 3) {
            U0();
        }
        return true;
    }

    protected final void p0(int selectedPosition, int minSelectedPosition, int maxSelectedPosition) {
        this.minSelectedPosition = minSelectedPosition;
        this.maxSelectedPosition = maxSelectedPosition;
        int iJ = J(selectedPosition);
        this.selectedPosition = iJ;
        this.currentScrollPosition = iJ;
    }

    @Override // java.lang.Runnable
    public void run() {
        OverScroller overScroller = this.scroller;
        if (overScroller.isFinished()) {
            overScroller = this.adjustScroller;
        }
        I();
        if (overScroller.computeScrollOffset()) {
            a1(overScroller);
            ViewCompat.postOnAnimation(this, this);
        } else if (this.isFlingScroll) {
            this.isFlingScroll = false;
            l(true);
            ViewCompat.postOnAnimation(this, this);
        }
    }

    public final void setAdapter(@NotNull com.zyyoona7.wheel.adapter.a<?> adapter) {
        this.wheelAdapter = adapter;
        if (adapter != null) {
            adapter.F(this.textFormatter);
            adapter.B(this.formatterBlock);
            adapter.j(this.isCyclic);
            adapter.E(this.selectedPosition);
            adapter.A(this);
            K();
            K0();
        }
    }

    public final void setAutoFitTextSize(boolean z10) {
        this.isAutoFitTextSize = z10;
        K0();
    }

    public final void setCurtainColor(@ColorInt int i10) {
        if (i10 == this.curtainColor) {
            return;
        }
        this.curtainColor = i10;
        if (this.isShowCurtain) {
            invalidate();
        }
    }

    public final void setCurtainColorRes(@ColorRes int curtainColorRes) {
        setCurtainColor(ContextCompat.getColor(getContext(), curtainColorRes));
    }

    public final void setCurved(boolean z10) {
        if (z10 == this.isCurved) {
            return;
        }
        this.isCurved = z10;
        r();
        requestLayout();
    }

    public final void setCurvedArcDirection(@NotNull CurvedArcDirection curvedArcDirection) {
        if (curvedArcDirection == this.curvedArcDirection) {
            return;
        }
        this.curvedArcDirection = curvedArcDirection;
        if (this.isCurved) {
            requestLayout();
            invalidate();
        }
    }

    public final void setCurvedArcDirectionFactor(float f10) {
        if (f10 == this.curvedArcDirectionFactor) {
            return;
        }
        this.curvedArcDirectionFactor = Math.min(1.0f, Math.max(0.0f, f10));
        if (this.isCurved) {
            requestLayout();
            invalidate();
        }
    }

    public final void setCyclic(boolean z10) {
        if (z10 == this.isCyclic) {
            return;
        }
        this.isCyclic = z10;
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar != null) {
            aVar.j(z10);
        }
        J0();
    }

    public final <T> void setData(@NotNull List<? extends T> data) {
        setAdapter(new com.zyyoona7.wheel.adapter.a<>(data));
    }

    public final void setDividerCap(@NotNull Paint.Cap cap) {
        if (cap == this.dividerCap) {
            return;
        }
        this.dividerCap = cap;
        if (this.isShowDivider) {
            invalidate();
        }
    }

    public final void setDividerColor(@ColorInt int i10) {
        if (i10 == this.dividerColor) {
            return;
        }
        this.dividerColor = i10;
        if (this.isShowDivider) {
            invalidate();
        }
    }

    public final void setDividerColorRes(@ColorRes int dividerColorRes) {
        setDividerColor(ContextCompat.getColor(getContext(), dividerColorRes));
    }

    public final void setDividerHeight(int i10) {
        if (i10 == this.dividerHeight) {
            return;
        }
        this.dividerHeight = i10;
        if (this.isShowDivider) {
            invalidate();
        }
    }

    public final void setDividerOffsetY(int i10) {
        if (i10 == this.dividerOffsetY) {
            return;
        }
        this.dividerOffsetY = i10;
        if (this.isShowDivider) {
            E();
            invalidate();
        }
    }

    public final void setDividerPadding(int i10) {
        if (i10 == this.dividerPadding) {
            return;
        }
        this.dividerPadding = i10;
        if (this.isShowDivider) {
            invalidate();
        }
    }

    public final void setDividerType(@NotNull DividerType dividerType) {
        if (dividerType == this.dividerType) {
            return;
        }
        this.dividerType = dividerType;
        if (this.isShowDivider) {
            invalidate();
        }
    }

    public final void setDrawDebugRectEnabled(boolean z10) {
        if (z10 == this.drawDebugRectEnabled) {
            return;
        }
        this.drawDebugRectEnabled = z10;
        invalidate();
    }

    public final void setGravity(int i10) {
        if (i10 == this.gravity) {
            return;
        }
        this.gravity = i10;
        K0();
    }

    public final void setItemIndexer(@NotNull com.zyyoona7.wheel.adapter.b itemIndexer) {
        this.itemIndexer = itemIndexer;
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar != null) {
            aVar.C(itemIndexer);
        }
    }

    public final void setLeftText(@NotNull CharSequence charSequence) {
        if (Intrinsics.areEqual(charSequence, this.leftText)) {
            return;
        }
        this.leftText = charSequence;
        I0();
    }

    public final void setLeftTextColor(int i10) {
        if (i10 == this.leftTextColor) {
            return;
        }
        this.leftTextColor = i10;
        invalidate();
    }

    public final void setLeftTextColorRes(@ColorRes int leftTextColorRes) {
        setLeftTextColor(ContextCompat.getColor(getContext(), leftTextColorRes));
    }

    public final void setLeftTextGravity(int i10) {
        if (i10 == this.leftTextGravity) {
            return;
        }
        this.leftTextGravity = i10;
        s();
        invalidate();
    }

    public final void setLeftTextMarginRight(int i10) {
        if (i10 == this.leftTextMarginRight) {
            return;
        }
        this.leftTextMarginRight = i10;
        I0();
    }

    public final void setLeftTextSize(int i10) {
        if (i10 == this.leftTextSize) {
            return;
        }
        this.leftTextSize = i10;
        I0();
    }

    public final void setLeftTypeface(@NotNull Typeface typeface) {
        if (Intrinsics.areEqual(typeface, this.leftTextPaint.getTypeface())) {
            return;
        }
        this.leftTextPaint.setTypeface(typeface);
        I0();
    }

    public final void setLineSpacing(int i10) {
        if (i10 == this.lineSpacing) {
            return;
        }
        this.lineSpacing = i10;
        I0();
    }

    public final void setMaxTextWidthMeasureType(@NotNull MeasureType measureType) {
        if (measureType == this.maxTextWidthMeasureType) {
            return;
        }
        this.maxTextWidthMeasureType = measureType;
        I0();
    }

    public final void setMinTextSize(int i10) {
        if (i10 == this.minTextSize) {
            return;
        }
        this.minTextSize = i10;
        I0();
    }

    public final void setNormalTextColor(int i10) {
        if (i10 == this.normalTextColor) {
            return;
        }
        this.normalTextColor = i10;
        invalidate();
    }

    public final void setNormalTextColorRes(@ColorRes int normalColorRes) {
        setNormalTextColor(ContextCompat.getColor(getContext(), normalColorRes));
    }

    public final void setOnItemPositionChangedListener(@Nullable cb.a itemPositionChangedListener) {
        this.itemPositionChangedListener = itemPositionChangedListener;
    }

    public final void setOnItemSelectedListener(@Nullable cb.b itemSelectedListener) {
        this.itemSelectedListener = itemSelectedListener;
    }

    public final void setOnScrollChangedListener(@Nullable cb.c scrollChangedListener) {
        this.scrollChangedListener = scrollChangedListener;
    }

    public final void setRefractRatio(float f10) {
        if (f10 == this.refractRatio) {
            return;
        }
        this.refractRatio = Math.min(1.0f, Math.max(0.0f, f10));
        invalidate();
    }

    public final void setResetSelectedPosition(boolean z10) {
        this.isResetSelectedPosition = z10;
    }

    public final void setRightText(@NotNull CharSequence charSequence) {
        if (Intrinsics.areEqual(charSequence, this.rightText)) {
            return;
        }
        this.rightText = charSequence;
        I0();
    }

    public final void setRightTextColor(int i10) {
        if (i10 == this.rightTextColor) {
            return;
        }
        this.rightTextColor = i10;
        invalidate();
    }

    public final void setRightTextColorRes(@ColorRes int rightTextColorRes) {
        setRightTextColor(ContextCompat.getColor(getContext(), rightTextColorRes));
    }

    public final void setRightTextGravity(int i10) {
        if (i10 == this.rightTextGravity) {
            return;
        }
        this.rightTextGravity = i10;
        z();
        invalidate();
    }

    public final void setRightTextMarginLeft(int i10) {
        if (i10 == this.rightTextMarginLeft) {
            return;
        }
        this.rightTextMarginLeft = i10;
        I0();
    }

    public final void setRightTextSize(int i10) {
        if (i10 == this.rightTextSize) {
            return;
        }
        this.rightTextSize = i10;
        I0();
    }

    public final void setRightTypeface(@NotNull Typeface typeface) {
        if (Intrinsics.areEqual(typeface, this.rightTextPaint.getTypeface())) {
            return;
        }
        this.rightTextPaint.setTypeface(typeface);
        I0();
    }

    @JvmOverloads
    public final void setSelectableRange(@IntRange(from = 0) int i10) {
        setSelectableRange$default(this, 0, i10, 1, null);
    }

    @JvmOverloads
    public final void setSelectedPosition(int i10) {
        setSelectedPosition$default(this, i10, false, 0, 6, null);
    }

    @Deprecated(message = "renamed to setSelectableRange", replaceWith = @ReplaceWith(expression = "setSelectableRange(min,max)", imports = {}))
    @JvmOverloads
    public final void setSelectedRange(@IntRange(from = 0) int i10) {
        setSelectedRange$default(this, 0, i10, 1, null);
    }

    public final void setSelectedTextColor(int i10) {
        if (i10 == this.selectedTextColor) {
            return;
        }
        this.selectedTextColor = i10;
        invalidate();
    }

    public final void setSelectedTextColorRes(@ColorRes int selectedColorRes) {
        setSelectedTextColor(ContextCompat.getColor(getContext(), selectedColorRes));
    }

    public final void setShowCurtain(boolean z10) {
        if (z10 == this.isShowCurtain) {
            return;
        }
        this.isShowCurtain = z10;
        invalidate();
    }

    public final void setShowDivider(boolean z10) {
        if (z10 == this.isShowDivider) {
            return;
        }
        this.isShowDivider = z10;
        if (this.dividerOffsetY > 0) {
            E();
        }
        invalidate();
    }

    public final void setSoundEffect(boolean z10) {
        this.isSoundEffect = z10;
        if (getSoundHelper().a() == 0.0f) {
            o0();
        }
    }

    public final void setSoundResource(@RawRes int soundRes) {
        db.a soundHelper = getSoundHelper();
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        soundHelper.b(context, soundRes);
    }

    public final void setSoundVolume(float playVolume) {
        getSoundHelper().f(Math.min(1.0f, Math.max(0.0f, playVolume)));
    }

    public final void setTextAlign(@NotNull Paint.Align align) {
        if (align == this.textAlign) {
            return;
        }
        this.textAlign = align;
        L0();
    }

    public final void setTextFormatter(@NotNull com.zyyoona7.wheel.formatter.c textFormatter) {
        this.textFormatter = textFormatter;
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar != null) {
            aVar.F(textFormatter);
            K();
            K0();
        }
    }

    public final void setTextPadding(float textPaddingDp) {
        int iF = INSTANCE.f(textPaddingDp);
        setTextPaddingLeft(iF);
        setTextPaddingRight(iF);
    }

    public final void setTextPaddingLeft(int i10) {
        if (i10 == this.textPaddingLeft) {
            return;
        }
        this.textPaddingLeft = i10;
        requestLayout();
    }

    public final void setTextPaddingRight(int i10) {
        if (i10 == this.textPaddingRight) {
            return;
        }
        this.textPaddingRight = i10;
        requestLayout();
    }

    public final void setTextSize(int i10) {
        if (i10 == this.textSize) {
            return;
        }
        this.textSize = i10;
        K0();
    }

    @JvmOverloads
    public final void setTypeface(@NotNull Typeface typeface) {
        setTypeface$default(this, typeface, false, 2, null);
    }

    public final void setVisibleItems(int i10) {
        int iM = m(i10);
        if (iM == this.visibleItems) {
            return;
        }
        this.visibleItems = iM;
        I0();
    }

    /* JADX INFO: renamed from: t0, reason: from getter */
    public final boolean getIsAutoFitTextSize() {
        return this.isAutoFitTextSize;
    }

    /* JADX INFO: renamed from: u0, reason: from getter */
    public final boolean getIsBoldForSelectedItem() {
        return this.isBoldForSelectedItem;
    }

    /* JADX INFO: renamed from: v0, reason: from getter */
    public final boolean getIsCurved() {
        return this.isCurved;
    }

    /* JADX INFO: renamed from: w0, reason: from getter */
    public final boolean getIsCyclic() {
        return this.isCyclic;
    }

    /* JADX INFO: renamed from: z0, reason: from getter */
    public final boolean getIsResetSelectedPosition() {
        return this.isResetSelectedPosition;
    }

    @JvmOverloads
    public WheelView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    @JvmOverloads
    public final void setSelectableRange(@IntRange(from = 0) int i10, @NotNull OverRangeMode overRangeMode) {
        setSelectableRange$default(this, 0, i10, overRangeMode, 1, null);
    }

    @JvmOverloads
    public final void setSelectedPosition(int i10, boolean z10) {
        setSelectedPosition$default(this, i10, z10, 0, 4, null);
    }

    @Deprecated(message = "renamed to setSelectableRange", replaceWith = @ReplaceWith(expression = "setSelectableRange(min,max,selectableRangeMode)", imports = {}))
    @JvmOverloads
    public final void setSelectedRange(@IntRange(from = 0) int i10, @NotNull OverRangeMode overRangeMode) {
        setSelectedRange$default(this, 0, i10, overRangeMode, 1, null);
    }

    @JvmOverloads
    public final void setTypeface(@NotNull Typeface typeface, boolean isBoldForSelectedItem) {
        if (Intrinsics.areEqual(typeface, this.mainTextPaint.getTypeface()) && isBoldForSelectedItem == this.isBoldForSelectedItem) {
            return;
        }
        this.isBoldForSelectedItem = isBoldForSelectedItem;
        if (isBoldForSelectedItem) {
            if (typeface.isBold()) {
                this.normalTypeface = Typeface.create(typeface, 0);
                this.boldTypeface = typeface;
            } else {
                this.normalTypeface = typeface;
                this.boldTypeface = Typeface.create(typeface, 1);
            }
            this.mainTextPaint.setTypeface(this.boldTypeface);
        } else {
            this.mainTextPaint.setTypeface(typeface);
        }
        I0();
    }

    public /* synthetic */ WheelView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    public static /* synthetic */ void setSelectableRange$default(WheelView wheelView, int i10, int i11, OverRangeMode overRangeMode, int i12, Object obj) {
        if (obj == null) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            wheelView.setSelectableRange(i10, i11, overRangeMode);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setSelectableRange");
    }

    public static /* synthetic */ void setSelectedRange$default(WheelView wheelView, int i10, int i11, OverRangeMode overRangeMode, int i12, Object obj) {
        if (obj == null) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            wheelView.setSelectedRange(i10, i11, overRangeMode);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setSelectedRange");
    }

    @JvmOverloads
    public final void setSelectableRange(@IntRange(from = 0) int min, @IntRange(from = 0) int max) {
        setSelectableRange(min, max, OverRangeMode.NORMAL);
    }

    @JvmOverloads
    public final void setSelectedPosition(int position, boolean isSmoothScroll, int smoothDuration) {
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar != null) {
            int iG = aVar.g();
            if (position < 0 || iG <= position) {
                return;
            }
            d();
            int iJ = J(position);
            int iQ = q(iJ);
            if (iQ == 0) {
                if (B0()) {
                    T0(position);
                    return;
                }
                return;
            }
            if (isSmoothScroll) {
                this.scroller.startScroll(0, this.scrollOffsetY, 0, iQ, smoothDuration > 0 ? smoothDuration : 250);
                s0();
                ViewCompat.postOnAnimation(this, this);
            } else {
                if (B0()) {
                    T0(position);
                    return;
                }
                U(iQ);
                this.selectedPosition = iJ;
                this.currentScrollPosition = iJ;
                com.zyyoona7.wheel.adapter.a<?> aVar2 = this.wheelAdapter;
                if (aVar2 != null) {
                    aVar2.E(iJ);
                    O0(aVar2, this.selectedPosition);
                    cb.b bVar = this.itemSelectedListener;
                    if (bVar != null) {
                        bVar.e(this, aVar2, this.selectedPosition);
                    }
                }
                s0();
            }
        }
    }

    @Deprecated(message = "renamed to setSelectableRange", replaceWith = @ReplaceWith(expression = "setSelectableRange(min,max)", imports = {}))
    @JvmOverloads
    public final void setSelectedRange(@IntRange(from = 0) int min, @IntRange(from = 0) int max) {
        setSelectableRange(min, max);
    }

    @JvmOverloads
    public WheelView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.normalPaint = new Paint(1);
        this.mainTextPaint = new TextPaint(1);
        TextPaint textPaint = new TextPaint(1);
        this.leftTextPaint = textPaint;
        TextPaint textPaint2 = new TextPaint(1);
        this.rightTextPaint = textPaint2;
        this.mainTextRect = new Rect();
        this.leftTextRect = new Rect();
        this.rightTextRect = new Rect();
        this.cameraForCurved = new Camera();
        this.matrixForCurved = new Matrix();
        this.scroller = new OverScroller(context, new b());
        this.adjustScroller = new OverScroller(context, new DecelerateInterpolator(2.5f));
        this.minScrollY = -1;
        this.maxScrollY = -1;
        this.soundHelper = LazyKt__LazyJVMKt.lazy(new Function0<db.a>() { // from class: com.zyyoona7.wheel.WheelView$soundHelper$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final db.a invoke() {
                return db.a.f90856d.a();
            }
        });
        this.itemChangedPosition = -1;
        this.maxTextWidthMeasureType = MeasureType.DEFAULT;
        this.gravity = 17;
        int i11 = S2;
        this.textSize = i11;
        this.minTextSize = T2;
        this.textAlign = Paint.Align.CENTER;
        this.normalTextColor = W2;
        this.selectedTextColor = -16777216;
        int i12 = U2;
        this.textPaddingLeft = i12;
        this.textPaddingRight = i12;
        this.visibleItems = 5;
        this.lineSpacing = R2;
        this.dividerColor = -16777216;
        this.dividerHeight = V2;
        this.dividerType = DividerType.FILL;
        this.dividerCap = Paint.Cap.ROUND;
        this.isCurved = true;
        this.curvedArcDirection = CurvedArcDirection.CENTER;
        this.curvedArcDirectionFactor = 0.75f;
        this.refractRatio = 1.0f;
        this.maxSelectedPosition = -1;
        this.minSelectedPosition = -1;
        this.mOverRangeMode = OverRangeMode.NORMAL;
        this.leftText = "";
        this.rightText = "";
        this.leftTextSize = i11;
        this.rightTextSize = i11;
        this.leftTextColor = -16777216;
        this.rightTextColor = -16777216;
        this.leftTextGravity = 17;
        this.rightTextGravity = 17;
        this.resizeArray = LazyKt__LazyJVMKt.lazy(new Function0<SparseArray<Float>>() { // from class: com.zyyoona7.wheel.WheelView$resizeArray$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final SparseArray<Float> invoke() {
                return new SparseArray<>();
            }
        });
        q0(context);
        textPaint.setTextAlign(Paint.Align.CENTER);
        textPaint2.setTextAlign(Paint.Align.CENTER);
        if (attributeSet != null) {
            n0(context, attributeSet);
        }
    }

    public final void setItemIndexer(@NotNull Function2<? super com.zyyoona7.wheel.adapter.a<?>, Object, Integer> indexerBlock) {
        this.itemIndexerBlock = indexerBlock;
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar != null) {
            aVar.D(indexerBlock);
        }
    }

    public final void setLeftTextMarginRight(float marginRightDp) {
        setLeftTextMarginRight(INSTANCE.f(marginRightDp));
    }

    public final void setLeftTextSize(float textSizeSp) {
        setLeftTextSize(INSTANCE.m(textSizeSp));
    }

    public final void setLineSpacing(float lineSpacingDp) {
        setLineSpacing(INSTANCE.f(lineSpacingDp));
    }

    public final void setMinTextSize(float minTextSizeSp) {
        setMinTextSize(INSTANCE.m(minTextSizeSp));
    }

    public final void setRightTextMarginLeft(float marginLeftDp) {
        setRightTextMarginLeft(INSTANCE.f(marginLeftDp));
    }

    public final void setRightTextSize(float textSizeSp) {
        setRightTextSize(INSTANCE.m(textSizeSp));
    }

    @JvmOverloads
    public final void setSelectableRange(@IntRange(from = 0) int min, @IntRange(from = 0) int max, @NotNull OverRangeMode overRangeMode) {
        if (max < min) {
            max = min;
        }
        if (min < 0 && max < 0) {
            this.minSelectedPosition = -1;
            this.maxSelectedPosition = -1;
            W0(overRangeMode);
            v();
            return;
        }
        this.minSelectedPosition = Math.max(0, min);
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar != null && max >= aVar.g()) {
            max = aVar.g() - 1;
        }
        this.maxSelectedPosition = max;
        W0(overRangeMode);
        if (overRangeMode == OverRangeMode.HIDE_ITEM) {
            com.zyyoona7.wheel.adapter.a<?> aVar2 = this.wheelAdapter;
            if (aVar2 != null) {
                aVar2.l(this.minSelectedPosition, this.maxSelectedPosition);
            }
            K0();
        }
        int i10 = this.selectedPosition;
        int i11 = this.minSelectedPosition;
        if (i10 < i11) {
            setSelectedPosition$default(this, i11, false, 0, 6, null);
        } else {
            int i12 = this.maxSelectedPosition;
            if (i10 > i12) {
                setSelectedPosition$default(this, i12, false, 0, 6, null);
            }
        }
        v();
    }

    @Deprecated(message = "renamed to setSelectableRange", replaceWith = @ReplaceWith(expression = "setSelectableRange(min,max,selectableRangeMode)", imports = {}))
    @JvmOverloads
    public final void setSelectedRange(@IntRange(from = 0) int min, @IntRange(from = 0) int max, @NotNull OverRangeMode overRangeMode) {
        setSelectableRange(min, max, overRangeMode);
    }

    public final void setTextPaddingLeft(float textPaddingLeftDp) {
        setTextPaddingLeft(INSTANCE.f(textPaddingLeftDp));
    }

    public final void setTextPaddingRight(float textPaddingRightDp) {
        setTextPaddingRight(INSTANCE.f(textPaddingRightDp));
    }

    public final void setTextSize(float textSizeSp) {
        setTextSize(INSTANCE.m(textSizeSp));
    }

    public final void setDividerHeight(float dividerHeightDp) {
        setDividerHeight(INSTANCE.f(dividerHeightDp));
    }

    public final void setDividerPadding(float dividerPaddingDp) {
        setDividerPadding(INSTANCE.f(dividerPaddingDp));
    }

    public final void setDividerOffsetY(float offsetYDp) {
        setDividerOffsetY(INSTANCE.f(offsetYDp));
    }

    public final void setTextFormatter(@NotNull Function1<Object, String> formatterBlock) {
        this.formatterBlock = formatterBlock;
        com.zyyoona7.wheel.adapter.a<?> aVar = this.wheelAdapter;
        if (aVar != null) {
            aVar.B(formatterBlock);
            K();
            K0();
        }
    }
}
