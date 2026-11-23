package com.join.kotlin.ui.modleregin.viewModle;

import android.content.Context;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.modleregin.modle.BTDynamicMain;
import com.join.kotlin.ui.modleregin.modle.BTDynamicModle;
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.join.kotlin.ui.modleregin.modle.BtOnlineGame;
import com.join.kotlin.ui.modleregin.modle.BtReginResultMain;
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;
import com.join.kotlin.ui.modleregin.modle.BtVideodata;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.TitleModle;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.e0;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.TipBean;
import com.psk.kotlin.util.CommonListMainData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.h;
import kotlinx.coroutines.j;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.o1;
import kotlinx.coroutines.z0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.kotlin.ui.modleregin.viewModle.BtReginModle$loadDatas$job$1", f = "BtReginModle.kt", i = {0}, l = {525}, m = "invokeSuspend", n = {"result"}, s = {"L$0"})
@SourceDebugExtension({"SMAP\nBtReginModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BtReginModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1\n+ 2 ApiCall.kt\ncom/join/kotlin/http/protocol/ApiCallKt\n*L\n1#1,524:1\n12#2:525\n*S KotlinDebug\n*F\n+ 1 BtReginModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1\n*L\n71#1:525\n*E\n"})
final class BtReginModle$loadDatas$job$1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ Ref.ObjectRef<RequestModel<RequestGameIdArgs>> $requestModel;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ BtReginModle this$0;

    /* JADX INFO: renamed from: com.join.kotlin.ui.modleregin.viewModle.BtReginModle$loadDatas$job$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.modleregin.viewModle.BtReginModle$loadDatas$job$1$1", f = "BtReginModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nBtReginModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BtReginModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,524:1\n1869#2,2:525\n1869#2,2:527\n1878#2,2:529\n1869#2,2:531\n1878#2,2:533\n1563#2:535\n1634#2,3:536\n1878#2,3:539\n1880#2:542\n1880#2:543\n*S KotlinDebug\n*F\n+ 1 BtReginModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1\n*L\n167#1:525,2\n224#1:527,2\n271#1:529,2\n273#1:531,2\n300#1:533,2\n305#1:535\n305#1:536,3\n387#1:539,3\n300#1:542\n271#1:543\n*E\n"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ Ref.ObjectRef<ResponseModel<BtReginResultMain>> $result;
        int label;
        final /* synthetic */ BtReginModle this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef<ResponseModel<BtReginResultMain>> objectRef, BtReginModle btReginModle, Context context, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$result = objectRef;
            this.this$0 = btReginModle;
            this.$context = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$result, this.this$0, this.$context, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:165:0x0604  */
        /* JADX WARN: Code duplicated, block: B:167:0x0607 A[Catch: Exception -> 0x0c28, TryCatch #0 {Exception -> 0x0c28, blocks: (B:12:0x006b, B:15:0x00a7, B:67:0x029f, B:68:0x02be, B:70:0x02c4, B:72:0x02ce, B:73:0x02d0, B:75:0x02e3, B:81:0x02f1, B:83:0x02f7, B:91:0x0324, B:93:0x032c, B:94:0x0343, B:84:0x0301, B:87:0x0314, B:90:0x031e, B:97:0x036b, B:99:0x0375, B:101:0x0385, B:102:0x0395, B:104:0x03dc, B:106:0x03e2, B:107:0x03ea, B:109:0x03f0, B:111:0x0416, B:113:0x041c, B:116:0x0434, B:117:0x0439, B:119:0x043f, B:121:0x044b, B:123:0x0455, B:125:0x045f, B:127:0x0469, B:129:0x0475, B:131:0x0481, B:133:0x048f, B:135:0x049d, B:138:0x04ae, B:149:0x051f, B:151:0x054c, B:153:0x056e, B:115:0x0430, B:154:0x05ca, B:159:0x05f3, B:161:0x05fb, B:167:0x0607, B:168:0x0617, B:173:0x0625, B:176:0x0630, B:177:0x0637, B:179:0x063d, B:182:0x064c, B:184:0x0655, B:186:0x065b, B:188:0x0675, B:199:0x06ce, B:234:0x07d2, B:208:0x06ec, B:210:0x06f4, B:216:0x0700, B:217:0x0715, B:219:0x071b, B:220:0x075f, B:343:0x0bd8, B:344:0x0c19), top: B:357:0x006b }] */
        /* JADX WARN: Code duplicated, block: B:170:0x061d A[Catch: Exception -> 0x0bd4, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:173:0x0625 A[Catch: Exception -> 0x0c28, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0c28, blocks: (B:12:0x006b, B:15:0x00a7, B:67:0x029f, B:68:0x02be, B:70:0x02c4, B:72:0x02ce, B:73:0x02d0, B:75:0x02e3, B:81:0x02f1, B:83:0x02f7, B:91:0x0324, B:93:0x032c, B:94:0x0343, B:84:0x0301, B:87:0x0314, B:90:0x031e, B:97:0x036b, B:99:0x0375, B:101:0x0385, B:102:0x0395, B:104:0x03dc, B:106:0x03e2, B:107:0x03ea, B:109:0x03f0, B:111:0x0416, B:113:0x041c, B:116:0x0434, B:117:0x0439, B:119:0x043f, B:121:0x044b, B:123:0x0455, B:125:0x045f, B:127:0x0469, B:129:0x0475, B:131:0x0481, B:133:0x048f, B:135:0x049d, B:138:0x04ae, B:149:0x051f, B:151:0x054c, B:153:0x056e, B:115:0x0430, B:154:0x05ca, B:159:0x05f3, B:161:0x05fb, B:167:0x0607, B:168:0x0617, B:173:0x0625, B:176:0x0630, B:177:0x0637, B:179:0x063d, B:182:0x064c, B:184:0x0655, B:186:0x065b, B:188:0x0675, B:199:0x06ce, B:234:0x07d2, B:208:0x06ec, B:210:0x06f4, B:216:0x0700, B:217:0x0715, B:219:0x071b, B:220:0x075f, B:343:0x0bd8, B:344:0x0c19), top: B:357:0x006b }] */
        /* JADX WARN: Code duplicated, block: B:176:0x0630 A[Catch: Exception -> 0x0c28, TRY_ENTER, TryCatch #0 {Exception -> 0x0c28, blocks: (B:12:0x006b, B:15:0x00a7, B:67:0x029f, B:68:0x02be, B:70:0x02c4, B:72:0x02ce, B:73:0x02d0, B:75:0x02e3, B:81:0x02f1, B:83:0x02f7, B:91:0x0324, B:93:0x032c, B:94:0x0343, B:84:0x0301, B:87:0x0314, B:90:0x031e, B:97:0x036b, B:99:0x0375, B:101:0x0385, B:102:0x0395, B:104:0x03dc, B:106:0x03e2, B:107:0x03ea, B:109:0x03f0, B:111:0x0416, B:113:0x041c, B:116:0x0434, B:117:0x0439, B:119:0x043f, B:121:0x044b, B:123:0x0455, B:125:0x045f, B:127:0x0469, B:129:0x0475, B:131:0x0481, B:133:0x048f, B:135:0x049d, B:138:0x04ae, B:149:0x051f, B:151:0x054c, B:153:0x056e, B:115:0x0430, B:154:0x05ca, B:159:0x05f3, B:161:0x05fb, B:167:0x0607, B:168:0x0617, B:173:0x0625, B:176:0x0630, B:177:0x0637, B:179:0x063d, B:182:0x064c, B:184:0x0655, B:186:0x065b, B:188:0x0675, B:199:0x06ce, B:234:0x07d2, B:208:0x06ec, B:210:0x06f4, B:216:0x0700, B:217:0x0715, B:219:0x071b, B:220:0x075f, B:343:0x0bd8, B:344:0x0c19), top: B:357:0x006b }] */
        /* JADX WARN: Code duplicated, block: B:179:0x063d A[Catch: Exception -> 0x0c28, TryCatch #0 {Exception -> 0x0c28, blocks: (B:12:0x006b, B:15:0x00a7, B:67:0x029f, B:68:0x02be, B:70:0x02c4, B:72:0x02ce, B:73:0x02d0, B:75:0x02e3, B:81:0x02f1, B:83:0x02f7, B:91:0x0324, B:93:0x032c, B:94:0x0343, B:84:0x0301, B:87:0x0314, B:90:0x031e, B:97:0x036b, B:99:0x0375, B:101:0x0385, B:102:0x0395, B:104:0x03dc, B:106:0x03e2, B:107:0x03ea, B:109:0x03f0, B:111:0x0416, B:113:0x041c, B:116:0x0434, B:117:0x0439, B:119:0x043f, B:121:0x044b, B:123:0x0455, B:125:0x045f, B:127:0x0469, B:129:0x0475, B:131:0x0481, B:133:0x048f, B:135:0x049d, B:138:0x04ae, B:149:0x051f, B:151:0x054c, B:153:0x056e, B:115:0x0430, B:154:0x05ca, B:159:0x05f3, B:161:0x05fb, B:167:0x0607, B:168:0x0617, B:173:0x0625, B:176:0x0630, B:177:0x0637, B:179:0x063d, B:182:0x064c, B:184:0x0655, B:186:0x065b, B:188:0x0675, B:199:0x06ce, B:234:0x07d2, B:208:0x06ec, B:210:0x06f4, B:216:0x0700, B:217:0x0715, B:219:0x071b, B:220:0x075f, B:343:0x0bd8, B:344:0x0c19), top: B:357:0x006b }] */
        /* JADX WARN: Code duplicated, block: B:181:0x0649  */
        /* JADX WARN: Code duplicated, block: B:182:0x064c A[Catch: Exception -> 0x0c28, TryCatch #0 {Exception -> 0x0c28, blocks: (B:12:0x006b, B:15:0x00a7, B:67:0x029f, B:68:0x02be, B:70:0x02c4, B:72:0x02ce, B:73:0x02d0, B:75:0x02e3, B:81:0x02f1, B:83:0x02f7, B:91:0x0324, B:93:0x032c, B:94:0x0343, B:84:0x0301, B:87:0x0314, B:90:0x031e, B:97:0x036b, B:99:0x0375, B:101:0x0385, B:102:0x0395, B:104:0x03dc, B:106:0x03e2, B:107:0x03ea, B:109:0x03f0, B:111:0x0416, B:113:0x041c, B:116:0x0434, B:117:0x0439, B:119:0x043f, B:121:0x044b, B:123:0x0455, B:125:0x045f, B:127:0x0469, B:129:0x0475, B:131:0x0481, B:133:0x048f, B:135:0x049d, B:138:0x04ae, B:149:0x051f, B:151:0x054c, B:153:0x056e, B:115:0x0430, B:154:0x05ca, B:159:0x05f3, B:161:0x05fb, B:167:0x0607, B:168:0x0617, B:173:0x0625, B:176:0x0630, B:177:0x0637, B:179:0x063d, B:182:0x064c, B:184:0x0655, B:186:0x065b, B:188:0x0675, B:199:0x06ce, B:234:0x07d2, B:208:0x06ec, B:210:0x06f4, B:216:0x0700, B:217:0x0715, B:219:0x071b, B:220:0x075f, B:343:0x0bd8, B:344:0x0c19), top: B:357:0x006b }] */
        /* JADX WARN: Code duplicated, block: B:190:0x067c  */
        /* JADX WARN: Code duplicated, block: B:193:0x06b8 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:196:0x06c6 A[Catch: Exception -> 0x0bd4, TRY_LEAVE, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:199:0x06ce A[Catch: Exception -> 0x0c28, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0c28, blocks: (B:12:0x006b, B:15:0x00a7, B:67:0x029f, B:68:0x02be, B:70:0x02c4, B:72:0x02ce, B:73:0x02d0, B:75:0x02e3, B:81:0x02f1, B:83:0x02f7, B:91:0x0324, B:93:0x032c, B:94:0x0343, B:84:0x0301, B:87:0x0314, B:90:0x031e, B:97:0x036b, B:99:0x0375, B:101:0x0385, B:102:0x0395, B:104:0x03dc, B:106:0x03e2, B:107:0x03ea, B:109:0x03f0, B:111:0x0416, B:113:0x041c, B:116:0x0434, B:117:0x0439, B:119:0x043f, B:121:0x044b, B:123:0x0455, B:125:0x045f, B:127:0x0469, B:129:0x0475, B:131:0x0481, B:133:0x048f, B:135:0x049d, B:138:0x04ae, B:149:0x051f, B:151:0x054c, B:153:0x056e, B:115:0x0430, B:154:0x05ca, B:159:0x05f3, B:161:0x05fb, B:167:0x0607, B:168:0x0617, B:173:0x0625, B:176:0x0630, B:177:0x0637, B:179:0x063d, B:182:0x064c, B:184:0x0655, B:186:0x065b, B:188:0x0675, B:199:0x06ce, B:234:0x07d2, B:208:0x06ec, B:210:0x06f4, B:216:0x0700, B:217:0x0715, B:219:0x071b, B:220:0x075f, B:343:0x0bd8, B:344:0x0c19), top: B:357:0x006b }] */
        /* JADX WARN: Code duplicated, block: B:203:0x06db  */
        /* JADX WARN: Code duplicated, block: B:204:0x06e1  */
        /* JADX WARN: Code duplicated, block: B:208:0x06ec A[Catch: Exception -> 0x0c28, TRY_ENTER, TryCatch #0 {Exception -> 0x0c28, blocks: (B:12:0x006b, B:15:0x00a7, B:67:0x029f, B:68:0x02be, B:70:0x02c4, B:72:0x02ce, B:73:0x02d0, B:75:0x02e3, B:81:0x02f1, B:83:0x02f7, B:91:0x0324, B:93:0x032c, B:94:0x0343, B:84:0x0301, B:87:0x0314, B:90:0x031e, B:97:0x036b, B:99:0x0375, B:101:0x0385, B:102:0x0395, B:104:0x03dc, B:106:0x03e2, B:107:0x03ea, B:109:0x03f0, B:111:0x0416, B:113:0x041c, B:116:0x0434, B:117:0x0439, B:119:0x043f, B:121:0x044b, B:123:0x0455, B:125:0x045f, B:127:0x0469, B:129:0x0475, B:131:0x0481, B:133:0x048f, B:135:0x049d, B:138:0x04ae, B:149:0x051f, B:151:0x054c, B:153:0x056e, B:115:0x0430, B:154:0x05ca, B:159:0x05f3, B:161:0x05fb, B:167:0x0607, B:168:0x0617, B:173:0x0625, B:176:0x0630, B:177:0x0637, B:179:0x063d, B:182:0x064c, B:184:0x0655, B:186:0x065b, B:188:0x0675, B:199:0x06ce, B:234:0x07d2, B:208:0x06ec, B:210:0x06f4, B:216:0x0700, B:217:0x0715, B:219:0x071b, B:220:0x075f, B:343:0x0bd8, B:344:0x0c19), top: B:357:0x006b }] */
        /* JADX WARN: Code duplicated, block: B:214:0x06fd  */
        /* JADX WARN: Code duplicated, block: B:216:0x0700 A[Catch: Exception -> 0x0c28, TryCatch #0 {Exception -> 0x0c28, blocks: (B:12:0x006b, B:15:0x00a7, B:67:0x029f, B:68:0x02be, B:70:0x02c4, B:72:0x02ce, B:73:0x02d0, B:75:0x02e3, B:81:0x02f1, B:83:0x02f7, B:91:0x0324, B:93:0x032c, B:94:0x0343, B:84:0x0301, B:87:0x0314, B:90:0x031e, B:97:0x036b, B:99:0x0375, B:101:0x0385, B:102:0x0395, B:104:0x03dc, B:106:0x03e2, B:107:0x03ea, B:109:0x03f0, B:111:0x0416, B:113:0x041c, B:116:0x0434, B:117:0x0439, B:119:0x043f, B:121:0x044b, B:123:0x0455, B:125:0x045f, B:127:0x0469, B:129:0x0475, B:131:0x0481, B:133:0x048f, B:135:0x049d, B:138:0x04ae, B:149:0x051f, B:151:0x054c, B:153:0x056e, B:115:0x0430, B:154:0x05ca, B:159:0x05f3, B:161:0x05fb, B:167:0x0607, B:168:0x0617, B:173:0x0625, B:176:0x0630, B:177:0x0637, B:179:0x063d, B:182:0x064c, B:184:0x0655, B:186:0x065b, B:188:0x0675, B:199:0x06ce, B:234:0x07d2, B:208:0x06ec, B:210:0x06f4, B:216:0x0700, B:217:0x0715, B:219:0x071b, B:220:0x075f, B:343:0x0bd8, B:344:0x0c19), top: B:357:0x006b }] */
        /* JADX WARN: Code duplicated, block: B:219:0x071b A[Catch: Exception -> 0x0c28, LOOP:9: B:217:0x0715->B:219:0x071b, LOOP_END, TryCatch #0 {Exception -> 0x0c28, blocks: (B:12:0x006b, B:15:0x00a7, B:67:0x029f, B:68:0x02be, B:70:0x02c4, B:72:0x02ce, B:73:0x02d0, B:75:0x02e3, B:81:0x02f1, B:83:0x02f7, B:91:0x0324, B:93:0x032c, B:94:0x0343, B:84:0x0301, B:87:0x0314, B:90:0x031e, B:97:0x036b, B:99:0x0375, B:101:0x0385, B:102:0x0395, B:104:0x03dc, B:106:0x03e2, B:107:0x03ea, B:109:0x03f0, B:111:0x0416, B:113:0x041c, B:116:0x0434, B:117:0x0439, B:119:0x043f, B:121:0x044b, B:123:0x0455, B:125:0x045f, B:127:0x0469, B:129:0x0475, B:131:0x0481, B:133:0x048f, B:135:0x049d, B:138:0x04ae, B:149:0x051f, B:151:0x054c, B:153:0x056e, B:115:0x0430, B:154:0x05ca, B:159:0x05f3, B:161:0x05fb, B:167:0x0607, B:168:0x0617, B:173:0x0625, B:176:0x0630, B:177:0x0637, B:179:0x063d, B:182:0x064c, B:184:0x0655, B:186:0x065b, B:188:0x0675, B:199:0x06ce, B:234:0x07d2, B:208:0x06ec, B:210:0x06f4, B:216:0x0700, B:217:0x0715, B:219:0x071b, B:220:0x075f, B:343:0x0bd8, B:344:0x0c19), top: B:357:0x006b }] */
        /* JADX WARN: Code duplicated, block: B:225:0x078d  */
        /* JADX WARN: Code duplicated, block: B:230:0x07a8 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:232:0x07cc A[Catch: Exception -> 0x0bd4, TRY_LEAVE, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:236:0x07e6 A[Catch: Exception -> 0x0bd4, TRY_ENTER, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:240:0x07f5 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:242:0x0801 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:264:0x088d  */
        /* JADX WARN: Code duplicated, block: B:268:0x08a2  */
        /* JADX WARN: Code duplicated, block: B:271:0x08e7 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:272:0x0902  */
        /* JADX WARN: Code duplicated, block: B:275:0x096c  */
        /* JADX WARN: Code duplicated, block: B:27:0x0101 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:285:0x0991 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:287:0x0999 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:290:0x09bf A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:294:0x09d9 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:298:0x09e9 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:29:0x010d A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:300:0x09f5 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:302:0x0a01 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:304:0x0a0d A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:306:0x0a1b A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:308:0x0a29 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:310:0x0a37 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:312:0x0a45 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:314:0x0a53 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:316:0x0a61  */
        /* JADX WARN: Code duplicated, block: B:317:0x0a64 A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:318:0x0a7d  */
        /* JADX WARN: Code duplicated, block: B:319:0x0a80  */
        /* JADX WARN: Code duplicated, block: B:320:0x0a83  */
        /* JADX WARN: Code duplicated, block: B:321:0x0a86  */
        /* JADX WARN: Code duplicated, block: B:322:0x0a89  */
        /* JADX WARN: Code duplicated, block: B:323:0x0a8c  */
        /* JADX WARN: Code duplicated, block: B:324:0x0a8f  */
        /* JADX WARN: Code duplicated, block: B:325:0x0a94  */
        /* JADX WARN: Code duplicated, block: B:329:0x0ab7  */
        /* JADX WARN: Code duplicated, block: B:332:0x0aef A[Catch: Exception -> 0x0bd4, TryCatch #1 {Exception -> 0x0bd4, blocks: (B:17:0x00d3, B:19:0x00d9, B:23:0x00f2, B:24:0x00f6, B:25:0x00fb, B:27:0x0101, B:29:0x010d, B:31:0x0119, B:33:0x0123, B:35:0x012d, B:37:0x0137, B:39:0x0141, B:41:0x014b, B:43:0x0155, B:46:0x0160, B:50:0x0180, B:52:0x01cc, B:54:0x01ee, B:56:0x023e, B:57:0x025a, B:59:0x0268, B:65:0x0274, B:170:0x061d, B:174:0x0628, B:191:0x0680, B:193:0x06b8, B:194:0x06c0, B:196:0x06c6, B:200:0x06d1, B:278:0x0977, B:280:0x097e, B:282:0x0984, B:283:0x098b, B:285:0x0991, B:287:0x0999, B:288:0x099c, B:290:0x09bf, B:292:0x09c5, B:295:0x09dd, B:296:0x09e3, B:298:0x09e9, B:300:0x09f5, B:302:0x0a01, B:304:0x0a0d, B:306:0x0a1b, B:308:0x0a29, B:310:0x0a37, B:312:0x0a45, B:314:0x0a53, B:317:0x0a64, B:330:0x0ac2, B:332:0x0aef, B:334:0x0b0d, B:294:0x09d9, B:335:0x0b81, B:226:0x079b, B:228:0x07a2, B:230:0x07a8, B:232:0x07cc, B:237:0x07ea, B:238:0x07ef, B:240:0x07f5, B:242:0x0801, B:244:0x080d, B:246:0x0817, B:248:0x0821, B:250:0x082d, B:252:0x083b, B:254:0x0849, B:256:0x0857, B:259:0x0868, B:269:0x08a7, B:271:0x08e7, B:273:0x0909, B:236:0x07e6, B:205:0x06e3, B:337:0x0ba1), top: B:358:0x00d3 }] */
        /* JADX WARN: Code duplicated, block: B:333:0x0b08  */
        /* JADX WARN: Code duplicated, block: B:339:0x0bb2  */
        /* JADX WARN: Code duplicated, block: B:344:0x0c19 A[Catch: Exception -> 0x0c28, TRY_LEAVE, TryCatch #0 {Exception -> 0x0c28, blocks: (B:12:0x006b, B:15:0x00a7, B:67:0x029f, B:68:0x02be, B:70:0x02c4, B:72:0x02ce, B:73:0x02d0, B:75:0x02e3, B:81:0x02f1, B:83:0x02f7, B:91:0x0324, B:93:0x032c, B:94:0x0343, B:84:0x0301, B:87:0x0314, B:90:0x031e, B:97:0x036b, B:99:0x0375, B:101:0x0385, B:102:0x0395, B:104:0x03dc, B:106:0x03e2, B:107:0x03ea, B:109:0x03f0, B:111:0x0416, B:113:0x041c, B:116:0x0434, B:117:0x0439, B:119:0x043f, B:121:0x044b, B:123:0x0455, B:125:0x045f, B:127:0x0469, B:129:0x0475, B:131:0x0481, B:133:0x048f, B:135:0x049d, B:138:0x04ae, B:149:0x051f, B:151:0x054c, B:153:0x056e, B:115:0x0430, B:154:0x05ca, B:159:0x05f3, B:161:0x05fb, B:167:0x0607, B:168:0x0617, B:173:0x0625, B:176:0x0630, B:177:0x0637, B:179:0x063d, B:182:0x064c, B:184:0x0655, B:186:0x065b, B:188:0x0675, B:199:0x06ce, B:234:0x07d2, B:208:0x06ec, B:210:0x06f4, B:216:0x0700, B:217:0x0715, B:219:0x071b, B:220:0x075f, B:343:0x0bd8, B:344:0x0c19), top: B:357:0x006b }] */
        /* JADX WARN: Code duplicated, block: B:47:0x0177  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v42, types: [T, com.join.kotlin.ui.modleregin.modle.BtOnlineGame] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            BtReginResultMain btReginResultMain;
            String str2;
            String str3;
            Object obj2;
            Object obj3;
            ArrayList arrayList;
            String str4;
            String str5;
            List<BTDynamicMain> dynamic_component;
            boolean z10;
            BtReginModle btReginModle;
            Iterator it2;
            int i10;
            int i11;
            List<BTDynamicModle> components;
            Iterator it3;
            IntentDateBean intentDateBean;
            List<BTDynamicModle> components2;
            String str6;
            String str7;
            BtReginModle btReginModle2;
            String str8;
            String str9;
            String str10;
            String str11;
            Iterator it4;
            int i12;
            int i13;
            int i14;
            BTDynamicModle bTDynamicModle;
            Integer modelType;
            Iterator it5;
            int i15;
            List<CollectionBeanSub> gameEntityList;
            boolean z11;
            ArrayList arrayList2;
            Iterator it6;
            String str12;
            String str13;
            String str14;
            CollectionBeanSub gameEntity;
            String str15;
            Object obj4;
            String string;
            String str16;
            String str17;
            String strSubstring;
            List<TipBean> tag_info;
            List<TipBean> listEmptyList;
            Iterator<TipBean> it7;
            TipBean next;
            Iterator<TipBean> it8;
            String str18;
            Object obj5;
            List<CollectionBeanSub> gameEntityList2;
            Iterator it9;
            int i16;
            CollectionBeanSub collectionBeanSub;
            Iterator it10;
            String str19;
            String str20;
            Object obj6;
            String string2;
            String strSubstring2;
            List<TipBean> tag_info2;
            List<TipBean> listEmptyList2;
            Iterator it11;
            String str21;
            String str22;
            String str23;
            Object obj7;
            String str24;
            String str25;
            String str26;
            String str27;
            Object obj8;
            Integer modelType2;
            Iterator it12;
            CollectionBeanSub collectionBeanSub2;
            List<TipBean> listEmptyList3;
            Iterator<TipBean> it13;
            String str28;
            TipBean next2;
            Iterator<TipBean> it14;
            String str29;
            String strSubstring3;
            List<CollectionBeanSub> gameEntityList3;
            String str30;
            String str31;
            Object obj9;
            Iterator it15;
            String str32;
            String string3;
            String str33;
            String strSubstring4;
            List<TipBean> listEmptyList4;
            String str34;
            String str35;
            String str36;
            String str37;
            String str38;
            String str39;
            String strD;
            AnonymousClass1 anonymousClass1 = this;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (anonymousClass1.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (anonymousClass1.$result.element.getCode() == 200) {
                if (anonymousClass1.this$0.getPage() == 1) {
                    List<CommonListMainData> value = anonymousClass1.this$0.getShowDatas().getValue();
                    Intrinsics.checkNotNull(value);
                    value.clear();
                }
                Ref.IntRef intRef = new Ref.IntRef();
                List<CommonListMainData> value2 = anonymousClass1.this$0.getShowDatas().getValue();
                Intrinsics.checkNotNull(value2);
                intRef.element = value2.size();
                if (anonymousClass1.$result.element.getData() == null) {
                    anonymousClass1.this$0.getRecycleViewStatus().setValue(Boxing.boxInt(4));
                } else {
                    try {
                        ArrayList arrayList3 = new ArrayList();
                        BtReginResultMain data = anonymousClass1.$result.element.getData();
                        String str40 = "25";
                        String str41 = "48";
                        String str42 = "47";
                        String str43 = "45";
                        String str44 = "44";
                        String str45 = "| ";
                        String str46 = "";
                        String str47 = "getInfo(...)";
                        if (anonymousClass1.this$0.getPage() == 1) {
                            BtVideodata head_banner_game = data.getHead_banner_game();
                            CollectionBeanSub gameEntity2 = head_banner_game.getGameEntity();
                            btReginResultMain = data;
                            gameEntity2.set_from(146);
                            gameEntity2.set_from_type(146);
                            gameEntity2.setRecPosition(String.valueOf(gameEntity2.getIndex()));
                            anonymousClass1.this$0.getAllDownloadBeans().add(gameEntity2);
                            if (gameEntity2.getTag_info() != null) {
                                try {
                                    List<TipBean> tag_info3 = gameEntity2.getTag_info();
                                    if (tag_info3 != null) {
                                        collectionBeanSub2 = gameEntity2;
                                        listEmptyList3 = tag_info3.subList(0, Math.min(3, gameEntity2.getTag_info().size()));
                                        if (listEmptyList3 == null) {
                                        }
                                        it13 = listEmptyList3.iterator();
                                        str28 = "";
                                        while (it13.hasNext()) {
                                            next2 = it13.next();
                                            if (next2.getId() != null) {
                                                it14 = it13;
                                                if (!Intrinsics.areEqual(next2.getId(), "") && !Intrinsics.areEqual(next2.getId(), "44") && !Intrinsics.areEqual(next2.getId(), "45") && !Intrinsics.areEqual(next2.getId(), "47") && !Intrinsics.areEqual(next2.getId(), "48") && !Intrinsics.areEqual(next2.getId(), "25") && !Intrinsics.areEqual(next2.getId(), "154") && !Intrinsics.areEqual(next2.getId(), "7")) {
                                                    str28 = str28 + next2.getName() + " · ";
                                                }
                                            } else {
                                                it14 = it13;
                                            }
                                            it13 = it14;
                                        }
                                    } else {
                                        collectionBeanSub2 = gameEntity2;
                                    }
                                    listEmptyList3 = CollectionsKt__CollectionsKt.emptyList();
                                    it13 = listEmptyList3.iterator();
                                    str28 = "";
                                    while (it13.hasNext()) {
                                        next2 = it13.next();
                                        if (next2.getId() != null) {
                                            it14 = it13;
                                            if (!Intrinsics.areEqual(next2.getId(), "")) {
                                                str28 = str28 + next2.getName() + " · ";
                                            }
                                        } else {
                                            it14 = it13;
                                        }
                                        it13 = it14;
                                    }
                                } catch (Exception e10) {
                                    e = e10;
                                    anonymousClass1 = this;
                                    e.printStackTrace();
                                }
                            } else {
                                collectionBeanSub2 = gameEntity2;
                                str28 = "";
                            }
                            int i17 = intRef.element;
                            String videoUrl = head_banner_game.getVideoUrl();
                            str3 = " · ";
                            String game_info_top_pic = head_banner_game.getGameEntity().getGame_info_top_pic();
                            obj2 = "7";
                            Intrinsics.checkNotNullExpressionValue(game_info_top_pic, "getGame_info_top_pic(...)");
                            String game_info_top_video_url = head_banner_game.getGameEntity().getGame_info_top_video_url();
                            List listEmptyList5 = CollectionsKt__CollectionsKt.emptyList();
                            String game_name = head_banner_game.getGameEntity().getGame_name();
                            Intrinsics.checkNotNullExpressionValue(game_name, "getGame_name(...)");
                            str2 = "getGame_name(...)";
                            String info = head_banner_game.getGameEntity().getInfo();
                            obj3 = "154";
                            Intrinsics.checkNotNullExpressionValue(info, str47);
                            str47 = str47;
                            StringBuilder sb2 = new StringBuilder();
                            if (str28 != null) {
                                strSubstring3 = str28.substring(0, Math.max(0, str28.length() - 2));
                                str29 = "substring(...)";
                                Intrinsics.checkNotNullExpressionValue(strSubstring3, str29);
                            } else {
                                str29 = "substring(...)";
                                strSubstring3 = null;
                            }
                            sb2.append(strSubstring3);
                            String str48 = str45;
                            sb2.append(str48);
                            sb2.append(UtilsMy.Z2(head_banner_game.getGameEntity().getActual_size()));
                            arrayList = arrayList3;
                            arrayList.add(new CommonListMainData(4, new MustplayItemBean(i17, videoUrl, game_info_top_pic, game_info_top_video_url, listEmptyList5, game_name, info, collectionBeanSub2, sb2.toString(), Boxing.boxBoolean(true)), "1-1", null, 8, null));
                            intRef.element++;
                            if (btReginResultMain.getAd_collection() != null) {
                                Boxing.boxBoolean(arrayList.add(new CommonListMainData(5, btReginResultMain.getAd_collection(), null, null, 12, null)));
                            }
                            intRef.element++;
                            List<BtOnlineGame> new_online_game = btReginResultMain.getNew_online_game();
                            if (new_online_game == null || new_online_game.isEmpty()) {
                                anonymousClass1 = this;
                                str = "47";
                                str45 = str48;
                                str4 = str29;
                            } else {
                                arrayList.add(new CommonListMainData(1, new TitleModle("即将上线", "", null, Boxing.boxBoolean(true)), "", null, 8, null));
                                intRef.element++;
                                anonymousClass1 = this;
                                anonymousClass1.this$0.getOnlineGameTitles().clear();
                                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                                Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                                List<BtOnlineGame> new_online_game2 = btReginResultMain.getNew_online_game();
                                BtReginModle btReginModle3 = anonymousClass1.this$0;
                                Iterator it16 = new_online_game2.iterator();
                                while (it16.hasNext()) {
                                    ?? r14 = (BtOnlineGame) it16.next();
                                    if (objectRef.element == 0) {
                                        objectRef.element = r14;
                                    }
                                    Iterator it17 = it16;
                                    long onlineTime = ((long) 1000) * r14.getOnlineTime();
                                    List<CollectionBeanSub> gameEntityList4 = r14.getGameEntityList();
                                    if (gameEntityList4 == null || gameEntityList4.isEmpty()) {
                                        str37 = str42;
                                        str38 = str48;
                                        str39 = str29;
                                    } else {
                                        if (e0.z(onlineTime)) {
                                            str38 = str48;
                                            booleanRef.element = true;
                                            strD = "今天";
                                            str37 = str42;
                                        } else {
                                            str38 = str48;
                                            str37 = str42;
                                            long j10 = 86400000;
                                            strD = e0.z(onlineTime - j10) ? "明天" : e0.z(j10 + onlineTime) ? "昨天" : e0.D(onlineTime, "MM-dd");
                                        }
                                        if (Intrinsics.areEqual(strD, "今天")) {
                                            objectRef.element = r14;
                                            str39 = str29;
                                            btReginModle3.getOnlineGameTitles().add(new BtTagSelecterBean(r14.getOnlineTime(), strD, true));
                                        } else {
                                            str39 = str29;
                                            List<BtTagSelecterBean> onlineGameTitles = btReginModle3.getOnlineGameTitles();
                                            long onlineTime2 = r14.getOnlineTime();
                                            Intrinsics.checkNotNull(strD);
                                            onlineGameTitles.add(new BtTagSelecterBean(onlineTime2, strD, false));
                                        }
                                    }
                                    str42 = str37;
                                    str48 = str38;
                                    it16 = it17;
                                    str29 = str39;
                                }
                                String str49 = str42;
                                str45 = str48;
                                str4 = str29;
                                if (!booleanRef.element && (!anonymousClass1.this$0.getOnlineGameTitles().isEmpty())) {
                                    anonymousClass1.this$0.getOnlineGameTitles().get(0).setStatus(true);
                                }
                                arrayList.add(new CommonListMainData(8, anonymousClass1.this$0.getOnlineGameTitles(), null, null, 12, null));
                                anonymousClass1.this$0.setTagListPosition(arrayList.size());
                                intRef.element++;
                                anonymousClass1.this$0.getListBtOnlineGame().clear();
                                anonymousClass1.this$0.getListBtOnlineGame().addAll(btReginResultMain.getNew_online_game());
                                BtOnlineGame btOnlineGame = (BtOnlineGame) objectRef.element;
                                if (btOnlineGame == null || (gameEntityList3 = btOnlineGame.getGameEntityList()) == null) {
                                    str = str49;
                                } else {
                                    BtReginModle btReginModle4 = anonymousClass1.this$0;
                                    Iterator it18 = gameEntityList3.iterator();
                                    while (it18.hasNext()) {
                                        CollectionBeanSub collectionBeanSub3 = (CollectionBeanSub) it18.next();
                                        collectionBeanSub3.set_from(146);
                                        collectionBeanSub3.set_from_type(146);
                                        collectionBeanSub3.setRecPosition(String.valueOf(collectionBeanSub3.getIndex()));
                                        btReginModle4.getAllDownloadBeans().add(collectionBeanSub3);
                                        if (collectionBeanSub3.getTag_info() != null) {
                                            List<TipBean> tag_info4 = collectionBeanSub3.getTag_info();
                                            if (tag_info4 == null || (listEmptyList4 = tag_info4.subList(0, Math.min(3, collectionBeanSub3.getTag_info().size()))) == null) {
                                                listEmptyList4 = CollectionsKt__CollectionsKt.emptyList();
                                            }
                                            Iterator<TipBean> it19 = listEmptyList4.iterator();
                                            string3 = "";
                                            while (it19.hasNext()) {
                                                TipBean next3 = it19.next();
                                                if (next3.getId() == null || Intrinsics.areEqual(next3.getId(), "") || Intrinsics.areEqual(next3.getId(), "44") || Intrinsics.areEqual(next3.getId(), "45")) {
                                                    str34 = str49;
                                                    str35 = str41;
                                                } else {
                                                    str34 = str49;
                                                    if (Intrinsics.areEqual(next3.getId(), str34)) {
                                                        it18 = it18;
                                                        it19 = it19;
                                                        str3 = str3;
                                                        obj2 = obj2;
                                                        str36 = str40;
                                                        str35 = str41;
                                                    } else {
                                                        str35 = str41;
                                                        if (!Intrinsics.areEqual(next3.getId(), str35)) {
                                                            it18 = it18;
                                                            str36 = str40;
                                                            if (Intrinsics.areEqual(next3.getId(), str36)) {
                                                                it19 = it19;
                                                            } else {
                                                                it19 = it19;
                                                                Object obj10 = obj3;
                                                                if (Intrinsics.areEqual(next3.getId(), obj10)) {
                                                                    obj3 = obj10;
                                                                } else {
                                                                    obj3 = obj10;
                                                                    obj2 = obj2;
                                                                    if (Intrinsics.areEqual(next3.getId(), obj2)) {
                                                                        str3 = str3;
                                                                    } else {
                                                                        StringBuilder sb3 = new StringBuilder();
                                                                        sb3.append(string3);
                                                                        sb3.append(next3.getName());
                                                                        str3 = str3;
                                                                        sb3.append(str3);
                                                                        string3 = sb3.toString();
                                                                    }
                                                                }
                                                            }
                                                            str3 = str3;
                                                            obj2 = obj2;
                                                        }
                                                    }
                                                    str40 = str36;
                                                    obj2 = obj2;
                                                    str3 = str3;
                                                    str41 = str35;
                                                    it18 = it18;
                                                    it19 = it19;
                                                    str49 = str34;
                                                }
                                                str36 = str40;
                                                str40 = str36;
                                                obj2 = obj2;
                                                str3 = str3;
                                                str41 = str35;
                                                it18 = it18;
                                                it19 = it19;
                                                str49 = str34;
                                            }
                                            str30 = str49;
                                            str31 = str3;
                                            obj9 = obj2;
                                            str41 = str41;
                                            it15 = it18;
                                            str32 = str40;
                                        } else {
                                            str30 = str49;
                                            str31 = str3;
                                            obj9 = obj2;
                                            str41 = str41;
                                            it15 = it18;
                                            str32 = str40;
                                            string3 = "";
                                        }
                                        str3 = str31;
                                        String ico_remote = collectionBeanSub3.getIco_remote();
                                        obj2 = obj9;
                                        Intrinsics.checkNotNullExpressionValue(ico_remote, "getIco_remote(...)");
                                        String gif_ico_remote = collectionBeanSub3.getGif_ico_remote();
                                        String game_name2 = collectionBeanSub3.getGame_name();
                                        str40 = str32;
                                        String str50 = str2;
                                        Intrinsics.checkNotNullExpressionValue(game_name2, str50);
                                        str2 = str50;
                                        StringBuilder sb4 = new StringBuilder();
                                        if (string3 != null) {
                                            strSubstring4 = string3.substring(0, Math.max(0, string3.length() - 2));
                                            str33 = str4;
                                            Intrinsics.checkNotNullExpressionValue(strSubstring4, str33);
                                        } else {
                                            str33 = str4;
                                            strSubstring4 = null;
                                        }
                                        sb4.append(strSubstring4);
                                        String str51 = str45;
                                        sb4.append(str51);
                                        sb4.append(UtilsMy.Z2(collectionBeanSub3.getActual_size()));
                                        String string4 = sb4.toString();
                                        String info2 = collectionBeanSub3.getInfo();
                                        String str52 = str47;
                                        Intrinsics.checkNotNullExpressionValue(info2, str52);
                                        str45 = str51;
                                        str4 = str33;
                                        CommonListMainData commonListMainData = new CommonListMainData(2, new BtGameListItem(999, ico_remote, gif_ico_remote, game_name2, string4, info2, collectionBeanSub3, new AppListItemShowBean(collectionBeanSub3, false)), null, null, 12, null);
                                        btReginModle4.getTagList().add(commonListMainData);
                                        arrayList.add(commonListMainData);
                                        str47 = str52;
                                        it18 = it15;
                                        str49 = str30;
                                    }
                                    str = str49;
                                    str5 = str47;
                                    Unit unit = Unit.INSTANCE;
                                }
                                dynamic_component = btReginResultMain.getDynamic_component();
                                if (dynamic_component != null || dynamic_component.isEmpty()) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                if (z10) {
                                    anonymousClass1.this$0.getRecycleViewStatus().setValue(Boxing.boxInt(4));
                                } else {
                                    List<BTDynamicMain> dynamic_component2 = btReginResultMain.getDynamic_component();
                                    Intrinsics.checkNotNull(dynamic_component2);
                                    btReginModle = anonymousClass1.this$0;
                                    it2 = dynamic_component2.iterator();
                                    i10 = 0;
                                    while (it2.hasNext()) {
                                        Object next4 = it2.next();
                                        i11 = i10 + 1;
                                        if (i10 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        BTDynamicMain bTDynamicMain = (BTDynamicMain) next4;
                                        components = bTDynamicMain.getComponents();
                                        if (components != null) {
                                            IntentDateBean intentDateBean2 = null;
                                            for (BTDynamicModle bTDynamicModle2 : components) {
                                                modelType2 = bTDynamicModle2.getModelType();
                                                if (modelType2 == null) {
                                                    it12 = it2;
                                                } else {
                                                    it12 = it2;
                                                    if (modelType2.intValue() != 1 && bTDynamicModle2.getCollectionId() != null) {
                                                        intentDateBean2 = new IntentDateBean();
                                                        intentDateBean2.setLink_type(2);
                                                        intentDateBean2.setTpl_type(bTDynamicModle2.getCollectionTplId());
                                                        intentDateBean2.setCrc_link_type_val(bTDynamicModle2.getCollectionId());
                                                    }
                                                }
                                                it2 = it12;
                                            }
                                            it3 = it2;
                                            Unit unit2 = Unit.INSTANCE;
                                            intentDateBean = intentDateBean2;
                                        } else {
                                            it3 = it2;
                                            intentDateBean = null;
                                        }
                                        arrayList.add(new CommonListMainData(1, new TitleModle(bTDynamicMain.getTitle(), bTDynamicMain.getSubTitle(), intentDateBean, null, 8, null), "", null, 8, null));
                                        intRef.element++;
                                        components2 = bTDynamicMain.getComponents();
                                        if (components2 != null) {
                                            it4 = components2.iterator();
                                            i12 = 0;
                                            i13 = 0;
                                            while (it4.hasNext()) {
                                                Object next5 = it4.next();
                                                i14 = i13 + 1;
                                                if (i13 < 0) {
                                                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                                                }
                                                bTDynamicModle = (BTDynamicModle) next5;
                                                modelType = bTDynamicModle.getModelType();
                                                if (modelType == null) {
                                                    it5 = it4;
                                                    i15 = i14;
                                                } else {
                                                    it5 = it4;
                                                    i15 = i14;
                                                    if (modelType.intValue() == 1) {
                                                        gameEntityList = bTDynamicModle.getGameEntityList();
                                                        if (gameEntityList != null || gameEntityList.isEmpty()) {
                                                            z11 = true;
                                                        } else {
                                                            z11 = false;
                                                        }
                                                        if (!z11) {
                                                            arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(bTDynamicModle.getGameEntityList(), 10));
                                                            for (it6 = r6.iterator(); it6.hasNext(); it6 = it6) {
                                                                CollectionBeanSub collectionBeanSub4 = (CollectionBeanSub) it6.next();
                                                                collectionBeanSub4.set_from(146);
                                                                collectionBeanSub4.set_from_type(146);
                                                                collectionBeanSub4.setRecPosition(String.valueOf(collectionBeanSub4.getIndex()));
                                                                StringBuilder sb5 = new StringBuilder();
                                                                sb5.append("1-2-");
                                                                sb5.append(i11);
                                                                sb5.append('-');
                                                                i12++;
                                                                sb5.append(i12);
                                                                collectionBeanSub4.setReMarks(sb5.toString());
                                                                btReginModle.getAllDownloadBeans().add(collectionBeanSub4);
                                                                arrayList2.add(collectionBeanSub4);
                                                            }
                                                            arrayList.add(new CommonListMainData(7, arrayList2, null, null, 12, null));
                                                            intRef.element++;
                                                        }
                                                    }
                                                    str12 = str5;
                                                    str13 = str46;
                                                    str14 = str4;
                                                    str5 = str12;
                                                    str4 = str14;
                                                    it4 = it5;
                                                    i13 = i15;
                                                    str43 = str43;
                                                    str44 = str44;
                                                    btReginModle = btReginModle;
                                                    str46 = str13;
                                                    str45 = str45;
                                                }
                                                if (modelType != null || modelType.intValue() != 3) {
                                                    str44 = str44;
                                                    str43 = str43;
                                                    btReginModle = btReginModle;
                                                    str16 = str5;
                                                    str46 = str46;
                                                    str17 = str4;
                                                    if (modelType != null && modelType.intValue() == 2 && (gameEntityList2 = bTDynamicModle.getGameEntityList()) != null) {
                                                        it9 = gameEntityList2.iterator();
                                                        i16 = 0;
                                                        while (it9.hasNext()) {
                                                            Object next6 = it9.next();
                                                            int i18 = i16 + 1;
                                                            if (i16 < 0) {
                                                                CollectionsKt__CollectionsKt.throwIndexOverflow();
                                                            }
                                                            collectionBeanSub = (CollectionBeanSub) next6;
                                                            collectionBeanSub.set_from(146);
                                                            collectionBeanSub.set_from_type(146);
                                                            collectionBeanSub.setRecPosition(String.valueOf(collectionBeanSub.getIndex()));
                                                            btReginModle.getAllDownloadBeans().add(collectionBeanSub);
                                                            if (collectionBeanSub.getTag_info() != null) {
                                                                tag_info2 = collectionBeanSub.getTag_info();
                                                                if (tag_info2 != null || (listEmptyList2 = tag_info2.subList(0, Math.min(3, collectionBeanSub.getTag_info().size()))) == null) {
                                                                    listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
                                                                }
                                                                string2 = str46;
                                                                for (TipBean tipBean : listEmptyList2) {
                                                                    if (tipBean.getId() != null) {
                                                                        str22 = str46;
                                                                        if (Intrinsics.areEqual(tipBean.getId(), str22)) {
                                                                            it11 = it9;
                                                                            str21 = str44;
                                                                        } else {
                                                                            str21 = str44;
                                                                            if (Intrinsics.areEqual(tipBean.getId(), str21)) {
                                                                                it11 = it9;
                                                                            } else {
                                                                                it11 = it9;
                                                                                str24 = str43;
                                                                                if (Intrinsics.areEqual(tipBean.getId(), str24)) {
                                                                                    str43 = str24;
                                                                                } else {
                                                                                    str43 = str24;
                                                                                    str25 = str;
                                                                                    if (Intrinsics.areEqual(tipBean.getId(), str25)) {
                                                                                        str = str25;
                                                                                    } else {
                                                                                        str = str25;
                                                                                        str26 = str41;
                                                                                        if (Intrinsics.areEqual(tipBean.getId(), str26)) {
                                                                                            str41 = str26;
                                                                                        } else {
                                                                                            str41 = str26;
                                                                                            str27 = str40;
                                                                                            if (Intrinsics.areEqual(tipBean.getId(), str27)) {
                                                                                                str40 = str27;
                                                                                            } else {
                                                                                                str40 = str27;
                                                                                                obj8 = obj3;
                                                                                                if (Intrinsics.areEqual(tipBean.getId(), obj8)) {
                                                                                                    obj3 = obj8;
                                                                                                } else {
                                                                                                    obj3 = obj8;
                                                                                                    obj7 = obj2;
                                                                                                    if (Intrinsics.areEqual(tipBean.getId(), obj7)) {
                                                                                                        str23 = str3;
                                                                                                    } else {
                                                                                                        StringBuilder sb6 = new StringBuilder();
                                                                                                        sb6.append(string2);
                                                                                                        sb6.append(tipBean.getName());
                                                                                                        str23 = str3;
                                                                                                        sb6.append(str23);
                                                                                                        string2 = sb6.toString();
                                                                                                    }
                                                                                                }
                                                                                                obj2 = obj7;
                                                                                                str44 = str21;
                                                                                                str3 = str23;
                                                                                                str46 = str22;
                                                                                                it9 = it11;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it11 = it9;
                                                                        str21 = str44;
                                                                        str22 = str46;
                                                                    }
                                                                    str23 = str3;
                                                                    obj7 = obj2;
                                                                    obj2 = obj7;
                                                                    str44 = str21;
                                                                    str3 = str23;
                                                                    str46 = str22;
                                                                    it9 = it11;
                                                                }
                                                                it10 = it9;
                                                                str19 = str44;
                                                                str20 = str46;
                                                                str3 = str3;
                                                                obj6 = obj2;
                                                            } else {
                                                                it10 = it9;
                                                                str19 = str44;
                                                                str20 = str46;
                                                                str3 = str3;
                                                                obj6 = obj2;
                                                                string2 = str20;
                                                            }
                                                            int i19 = intRef.element;
                                                            obj2 = obj6;
                                                            String ico_remote2 = collectionBeanSub.getIco_remote();
                                                            str44 = str19;
                                                            Intrinsics.checkNotNullExpressionValue(ico_remote2, "getIco_remote(...)");
                                                            String gif_ico_remote2 = collectionBeanSub.getGif_ico_remote();
                                                            String game_name3 = collectionBeanSub.getGame_name();
                                                            String str53 = str2;
                                                            Intrinsics.checkNotNullExpressionValue(game_name3, str53);
                                                            str2 = str53;
                                                            StringBuilder sb7 = new StringBuilder();
                                                            if (string2 != null) {
                                                                strSubstring2 = string2.substring(0, Math.max(0, string2.length() - 2));
                                                                Intrinsics.checkNotNullExpressionValue(strSubstring2, str17);
                                                            } else {
                                                                strSubstring2 = null;
                                                            }
                                                            sb7.append(strSubstring2);
                                                            String str54 = str45;
                                                            sb7.append(str54);
                                                            sb7.append(UtilsMy.Z2(collectionBeanSub.getActual_size()));
                                                            String string5 = sb7.toString();
                                                            String info3 = collectionBeanSub.getInfo();
                                                            String str55 = str16;
                                                            Intrinsics.checkNotNullExpressionValue(info3, str55);
                                                            BtGameListItem btGameListItem = new BtGameListItem(i19, ico_remote2, gif_ico_remote2, game_name3, string5, info3, collectionBeanSub, new AppListItemShowBean(collectionBeanSub, false));
                                                            StringBuilder sb8 = new StringBuilder();
                                                            sb8.append("1-2-");
                                                            sb8.append(i11);
                                                            sb8.append('-');
                                                            i12++;
                                                            sb8.append(i12);
                                                            arrayList.add(new CommonListMainData(2, btGameListItem, sb8.toString(), null, 8, null));
                                                            intRef.element++;
                                                            str16 = str55;
                                                            str17 = str17;
                                                            it9 = it10;
                                                            i16 = i18;
                                                            str46 = str20;
                                                            str45 = str54;
                                                        }
                                                        str45 = str45;
                                                        str12 = str16;
                                                        str13 = str46;
                                                        str14 = str17;
                                                        Unit unit3 = Unit.INSTANCE;
                                                    }
                                                    str5 = str12;
                                                    str4 = str14;
                                                    it4 = it5;
                                                    i13 = i15;
                                                    str43 = str43;
                                                    str44 = str44;
                                                    btReginModle = btReginModle;
                                                    str46 = str13;
                                                    str45 = str45;
                                                } else if (bTDynamicModle.getGameEntity() != null) {
                                                    gameEntity = bTDynamicModle.getGameEntity();
                                                    gameEntity.set_from(146);
                                                    gameEntity.set_from_type(146);
                                                    gameEntity.setRecPosition(String.valueOf(gameEntity.getIndex()));
                                                    btReginModle.getAllDownloadBeans().add(gameEntity);
                                                    if (gameEntity.getTag_info() != null) {
                                                        tag_info = gameEntity.getTag_info();
                                                        if (tag_info != null || (listEmptyList = tag_info.subList(0, Math.min(3, gameEntity.getTag_info().size()))) == null) {
                                                            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                                                        }
                                                        it7 = listEmptyList.iterator();
                                                        string = str46;
                                                        while (it7.hasNext()) {
                                                            next = it7.next();
                                                            if (next.getId() != null) {
                                                                it8 = it7;
                                                                if (Intrinsics.areEqual(next.getId(), str46) && !Intrinsics.areEqual(next.getId(), str44) && !Intrinsics.areEqual(next.getId(), str43)) {
                                                                    String str56 = str;
                                                                    if (Intrinsics.areEqual(next.getId(), str56)) {
                                                                        str = str56;
                                                                    } else {
                                                                        str = str56;
                                                                        String str57 = str41;
                                                                        if (Intrinsics.areEqual(next.getId(), str57)) {
                                                                            str41 = str57;
                                                                        } else {
                                                                            str41 = str57;
                                                                            String str58 = str40;
                                                                            if (Intrinsics.areEqual(next.getId(), str58)) {
                                                                                str40 = str58;
                                                                            } else {
                                                                                str40 = str58;
                                                                                Object obj11 = obj3;
                                                                                if (Intrinsics.areEqual(next.getId(), obj11)) {
                                                                                    obj3 = obj11;
                                                                                } else {
                                                                                    obj3 = obj11;
                                                                                    obj5 = obj2;
                                                                                    if (Intrinsics.areEqual(next.getId(), obj5)) {
                                                                                        str18 = str3;
                                                                                    } else {
                                                                                        StringBuilder sb9 = new StringBuilder();
                                                                                        sb9.append(string);
                                                                                        sb9.append(next.getName());
                                                                                        str18 = str3;
                                                                                        sb9.append(str18);
                                                                                        string = sb9.toString();
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                obj2 = obj5;
                                                                str3 = str18;
                                                                it7 = it8;
                                                            } else {
                                                                it8 = it7;
                                                            }
                                                            str18 = str3;
                                                            obj5 = obj2;
                                                            obj2 = obj5;
                                                            str3 = str18;
                                                            it7 = it8;
                                                        }
                                                        str15 = str3;
                                                        obj4 = obj2;
                                                    } else {
                                                        str15 = str3;
                                                        obj4 = obj2;
                                                        string = str46;
                                                    }
                                                    str3 = str15;
                                                    int i20 = intRef.element;
                                                    String vedio_url = gameEntity.getVedio_url();
                                                    obj2 = obj4;
                                                    String game_info_top_pic2 = gameEntity.getGame_info_top_pic();
                                                    str43 = str43;
                                                    Intrinsics.checkNotNullExpressionValue(game_info_top_pic2, "getGame_info_top_pic(...)");
                                                    String game_info_top_video_url2 = gameEntity.getGame_info_top_video_url();
                                                    List listEmptyList6 = CollectionsKt__CollectionsKt.emptyList();
                                                    String game_name4 = gameEntity.getGame_name();
                                                    str44 = str44;
                                                    String str59 = str2;
                                                    Intrinsics.checkNotNullExpressionValue(game_name4, str59);
                                                    str2 = str59;
                                                    String info4 = gameEntity.getInfo();
                                                    Intrinsics.checkNotNullExpressionValue(info4, str5);
                                                    str16 = str5;
                                                    StringBuilder sb10 = new StringBuilder();
                                                    if (string != null) {
                                                        strSubstring = string.substring(0, Math.max(0, string.length() - 2));
                                                        str17 = str4;
                                                        Intrinsics.checkNotNullExpressionValue(strSubstring, str17);
                                                    } else {
                                                        str17 = str4;
                                                        strSubstring = null;
                                                    }
                                                    sb10.append(strSubstring);
                                                    sb10.append(" | ");
                                                    sb10.append(UtilsMy.Z2(gameEntity.getActual_size()));
                                                    MustplayItemBean mustplayItemBean = new MustplayItemBean(i20, vedio_url, game_info_top_pic2, game_info_top_video_url2, listEmptyList6, game_name4, info4, gameEntity, sb10.toString(), null, 512, null);
                                                    StringBuilder sb11 = new StringBuilder();
                                                    sb11.append("1-2-");
                                                    sb11.append(i11);
                                                    sb11.append('-');
                                                    i12++;
                                                    sb11.append(i12);
                                                    arrayList.add(new CommonListMainData(4, mustplayItemBean, sb11.toString(), null, 8, null));
                                                    intRef.element++;
                                                } else {
                                                    str12 = str5;
                                                    str13 = str46;
                                                    str14 = str4;
                                                    str5 = str12;
                                                    str4 = str14;
                                                    it4 = it5;
                                                    i13 = i15;
                                                    str43 = str43;
                                                    str44 = str44;
                                                    btReginModle = btReginModle;
                                                    str46 = str13;
                                                    str45 = str45;
                                                }
                                                str12 = str16;
                                                str13 = str46;
                                                str14 = str17;
                                                str5 = str12;
                                                str4 = str14;
                                                it4 = it5;
                                                i13 = i15;
                                                str43 = str43;
                                                str44 = str44;
                                                btReginModle = btReginModle;
                                                str46 = str13;
                                                str45 = str45;
                                            }
                                            str6 = str44;
                                            str7 = str43;
                                            btReginModle2 = btReginModle;
                                            str8 = str5;
                                            str9 = str46;
                                            str10 = str45;
                                            str11 = str4;
                                            Unit unit4 = Unit.INSTANCE;
                                        } else {
                                            str6 = str44;
                                            str7 = str43;
                                            btReginModle2 = btReginModle;
                                            str8 = str5;
                                            str9 = str46;
                                            str10 = str45;
                                            str11 = str4;
                                        }
                                        anonymousClass1 = this;
                                        it2 = it3;
                                        i10 = i11;
                                        str5 = str8;
                                        str4 = str11;
                                        str43 = str7;
                                        str44 = str6;
                                        btReginModle = btReginModle2;
                                        str46 = str9;
                                        str45 = str10;
                                    }
                                    List<CommonListMainData> value3 = anonymousClass1.this$0.getShowDatas().getValue();
                                    Intrinsics.checkNotNull(value3);
                                    value3.addAll(arrayList);
                                    anonymousClass1.this$0.setPage(anonymousClass1.this$0.getPage() + 1);
                                    anonymousClass1.this$0.getRecycleViewStatus().setValue(Boxing.boxInt(2));
                                    anonymousClass1.this$0.getShowDatas().setValue(anonymousClass1.this$0.getShowDatas().getValue());
                                }
                            }
                        } else {
                            str = "47";
                            btReginResultMain = data;
                            str2 = "getGame_name(...)";
                            str3 = " · ";
                            obj2 = "7";
                            obj3 = "154";
                            str40 = "25";
                            str41 = "48";
                            arrayList = arrayList3;
                            str4 = "substring(...)";
                        }
                        str5 = str47;
                        dynamic_component = btReginResultMain.getDynamic_component();
                        if (dynamic_component != null) {
                            z10 = true;
                        } else {
                            z10 = true;
                        }
                        if (z10) {
                            List<BTDynamicMain> dynamic_component3 = btReginResultMain.getDynamic_component();
                            Intrinsics.checkNotNull(dynamic_component3);
                            btReginModle = anonymousClass1.this$0;
                            it2 = dynamic_component3.iterator();
                            i10 = 0;
                            while (it2.hasNext()) {
                                Object next7 = it2.next();
                                i11 = i10 + 1;
                                if (i10 < 0) {
                                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                                }
                                BTDynamicMain bTDynamicMain2 = (BTDynamicMain) next7;
                                components = bTDynamicMain2.getComponents();
                                if (components != null) {
                                    IntentDateBean intentDateBean3 = null;
                                    while (r8.hasNext()) {
                                        modelType2 = bTDynamicModle2.getModelType();
                                        if (modelType2 == null) {
                                            it12 = it2;
                                        } else {
                                            it12 = it2;
                                            if (modelType2.intValue() != 1) {
                                            }
                                        }
                                        it2 = it12;
                                    }
                                    it3 = it2;
                                    Unit unit5 = Unit.INSTANCE;
                                    intentDateBean = intentDateBean3;
                                } else {
                                    it3 = it2;
                                    intentDateBean = null;
                                }
                                arrayList.add(new CommonListMainData(1, new TitleModle(bTDynamicMain2.getTitle(), bTDynamicMain2.getSubTitle(), intentDateBean, null, 8, null), "", null, 8, null));
                                intRef.element++;
                                components2 = bTDynamicMain2.getComponents();
                                if (components2 != null) {
                                    it4 = components2.iterator();
                                    i12 = 0;
                                    i13 = 0;
                                    while (it4.hasNext()) {
                                        Object next8 = it4.next();
                                        i14 = i13 + 1;
                                        if (i13 < 0) {
                                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                                        }
                                        bTDynamicModle = (BTDynamicModle) next8;
                                        modelType = bTDynamicModle.getModelType();
                                        if (modelType == null) {
                                            it5 = it4;
                                            i15 = i14;
                                        } else {
                                            it5 = it4;
                                            i15 = i14;
                                            if (modelType.intValue() == 1) {
                                                gameEntityList = bTDynamicModle.getGameEntityList();
                                                if (gameEntityList != null) {
                                                    z11 = true;
                                                } else {
                                                    z11 = true;
                                                }
                                                if (!z11) {
                                                    arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(bTDynamicModle.getGameEntityList(), 10));
                                                    while (it6.hasNext()) {
                                                        CollectionBeanSub collectionBeanSub5 = (CollectionBeanSub) it6.next();
                                                        collectionBeanSub5.set_from(146);
                                                        collectionBeanSub5.set_from_type(146);
                                                        collectionBeanSub5.setRecPosition(String.valueOf(collectionBeanSub5.getIndex()));
                                                        StringBuilder sb12 = new StringBuilder();
                                                        sb12.append("1-2-");
                                                        sb12.append(i11);
                                                        sb12.append('-');
                                                        i12++;
                                                        sb12.append(i12);
                                                        collectionBeanSub5.setReMarks(sb12.toString());
                                                        btReginModle.getAllDownloadBeans().add(collectionBeanSub5);
                                                        arrayList2.add(collectionBeanSub5);
                                                    }
                                                    arrayList.add(new CommonListMainData(7, arrayList2, null, null, 12, null));
                                                    intRef.element++;
                                                }
                                            }
                                            str12 = str5;
                                            str13 = str46;
                                            str14 = str4;
                                            str5 = str12;
                                            str4 = str14;
                                            it4 = it5;
                                            i13 = i15;
                                            str43 = str43;
                                            str44 = str44;
                                            btReginModle = btReginModle;
                                            str46 = str13;
                                            str45 = str45;
                                        }
                                        if (modelType != null) {
                                            str44 = str44;
                                            str43 = str43;
                                            btReginModle = btReginModle;
                                            str16 = str5;
                                            str46 = str46;
                                            str17 = str4;
                                            if (modelType != null) {
                                                it9 = gameEntityList2.iterator();
                                                i16 = 0;
                                                while (it9.hasNext()) {
                                                    Object next9 = it9.next();
                                                    int i110 = i16 + 1;
                                                    if (i16 < 0) {
                                                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                                                    }
                                                    collectionBeanSub = (CollectionBeanSub) next9;
                                                    collectionBeanSub.set_from(146);
                                                    collectionBeanSub.set_from_type(146);
                                                    collectionBeanSub.setRecPosition(String.valueOf(collectionBeanSub.getIndex()));
                                                    btReginModle.getAllDownloadBeans().add(collectionBeanSub);
                                                    if (collectionBeanSub.getTag_info() != null) {
                                                        tag_info2 = collectionBeanSub.getTag_info();
                                                        if (tag_info2 != null) {
                                                            listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
                                                        } else {
                                                            listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
                                                        }
                                                        string2 = str46;
                                                        while (r9.hasNext()) {
                                                            if (tipBean.getId() != null) {
                                                                str22 = str46;
                                                                if (Intrinsics.areEqual(tipBean.getId(), str22)) {
                                                                    str21 = str44;
                                                                    if (Intrinsics.areEqual(tipBean.getId(), str21)) {
                                                                        it11 = it9;
                                                                        str24 = str43;
                                                                        if (Intrinsics.areEqual(tipBean.getId(), str24)) {
                                                                            str43 = str24;
                                                                            str25 = str;
                                                                            if (Intrinsics.areEqual(tipBean.getId(), str25)) {
                                                                                str = str25;
                                                                                str26 = str41;
                                                                                if (Intrinsics.areEqual(tipBean.getId(), str26)) {
                                                                                    str41 = str26;
                                                                                    str27 = str40;
                                                                                    if (Intrinsics.areEqual(tipBean.getId(), str27)) {
                                                                                        str40 = str27;
                                                                                        obj8 = obj3;
                                                                                        if (Intrinsics.areEqual(tipBean.getId(), obj8)) {
                                                                                            obj3 = obj8;
                                                                                            obj7 = obj2;
                                                                                            if (Intrinsics.areEqual(tipBean.getId(), obj7)) {
                                                                                                str23 = str3;
                                                                                            } else {
                                                                                                StringBuilder sb13 = new StringBuilder();
                                                                                                sb13.append(string2);
                                                                                                sb13.append(tipBean.getName());
                                                                                                str23 = str3;
                                                                                                sb13.append(str23);
                                                                                                string2 = sb13.toString();
                                                                                            }
                                                                                        } else {
                                                                                            obj3 = obj8;
                                                                                        }
                                                                                        obj2 = obj7;
                                                                                        str44 = str21;
                                                                                        str3 = str23;
                                                                                        str46 = str22;
                                                                                        it9 = it11;
                                                                                    } else {
                                                                                        str40 = str27;
                                                                                    }
                                                                                } else {
                                                                                    str41 = str26;
                                                                                }
                                                                            } else {
                                                                                str = str25;
                                                                            }
                                                                        } else {
                                                                            str43 = str24;
                                                                        }
                                                                    } else {
                                                                        it11 = it9;
                                                                    }
                                                                } else {
                                                                    it11 = it9;
                                                                    str21 = str44;
                                                                }
                                                            } else {
                                                                it11 = it9;
                                                                str21 = str44;
                                                                str22 = str46;
                                                            }
                                                            str23 = str3;
                                                            obj7 = obj2;
                                                            obj2 = obj7;
                                                            str44 = str21;
                                                            str3 = str23;
                                                            str46 = str22;
                                                            it9 = it11;
                                                        }
                                                        it10 = it9;
                                                        str19 = str44;
                                                        str20 = str46;
                                                        str3 = str3;
                                                        obj6 = obj2;
                                                    } else {
                                                        it10 = it9;
                                                        str19 = str44;
                                                        str20 = str46;
                                                        str3 = str3;
                                                        obj6 = obj2;
                                                        string2 = str20;
                                                    }
                                                    int i111 = intRef.element;
                                                    obj2 = obj6;
                                                    String ico_remote3 = collectionBeanSub.getIco_remote();
                                                    str44 = str19;
                                                    Intrinsics.checkNotNullExpressionValue(ico_remote3, "getIco_remote(...)");
                                                    String gif_ico_remote3 = collectionBeanSub.getGif_ico_remote();
                                                    String game_name5 = collectionBeanSub.getGame_name();
                                                    String str510 = str2;
                                                    Intrinsics.checkNotNullExpressionValue(game_name5, str510);
                                                    str2 = str510;
                                                    StringBuilder sb14 = new StringBuilder();
                                                    if (string2 != null) {
                                                        strSubstring2 = string2.substring(0, Math.max(0, string2.length() - 2));
                                                        Intrinsics.checkNotNullExpressionValue(strSubstring2, str17);
                                                    } else {
                                                        strSubstring2 = null;
                                                    }
                                                    sb14.append(strSubstring2);
                                                    String str511 = str45;
                                                    sb14.append(str511);
                                                    sb14.append(UtilsMy.Z2(collectionBeanSub.getActual_size()));
                                                    String string6 = sb14.toString();
                                                    String info5 = collectionBeanSub.getInfo();
                                                    String str512 = str16;
                                                    Intrinsics.checkNotNullExpressionValue(info5, str512);
                                                    BtGameListItem btGameListItem2 = new BtGameListItem(i111, ico_remote3, gif_ico_remote3, game_name5, string6, info5, collectionBeanSub, new AppListItemShowBean(collectionBeanSub, false));
                                                    StringBuilder sb15 = new StringBuilder();
                                                    sb15.append("1-2-");
                                                    sb15.append(i11);
                                                    sb15.append('-');
                                                    i12++;
                                                    sb15.append(i12);
                                                    arrayList.add(new CommonListMainData(2, btGameListItem2, sb15.toString(), null, 8, null));
                                                    intRef.element++;
                                                    str16 = str512;
                                                    str17 = str17;
                                                    it9 = it10;
                                                    i16 = i110;
                                                    str46 = str20;
                                                    str45 = str511;
                                                }
                                                str45 = str45;
                                                str12 = str16;
                                                str13 = str46;
                                                str14 = str17;
                                                Unit unit6 = Unit.INSTANCE;
                                            }
                                            str12 = str16;
                                            str13 = str46;
                                            str14 = str17;
                                        } else if (bTDynamicModle.getGameEntity() != null) {
                                            gameEntity = bTDynamicModle.getGameEntity();
                                            gameEntity.set_from(146);
                                            gameEntity.set_from_type(146);
                                            gameEntity.setRecPosition(String.valueOf(gameEntity.getIndex()));
                                            btReginModle.getAllDownloadBeans().add(gameEntity);
                                            if (gameEntity.getTag_info() != null) {
                                                tag_info = gameEntity.getTag_info();
                                                if (tag_info != null) {
                                                    listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                                                } else {
                                                    listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                                                }
                                                it7 = listEmptyList.iterator();
                                                string = str46;
                                                while (it7.hasNext()) {
                                                    next = it7.next();
                                                    if (next.getId() != null) {
                                                        it8 = it7;
                                                        if (Intrinsics.areEqual(next.getId(), str46)) {
                                                        }
                                                        obj2 = obj5;
                                                        str3 = str18;
                                                        it7 = it8;
                                                    } else {
                                                        it8 = it7;
                                                    }
                                                    str18 = str3;
                                                    obj5 = obj2;
                                                    obj2 = obj5;
                                                    str3 = str18;
                                                    it7 = it8;
                                                }
                                                str15 = str3;
                                                obj4 = obj2;
                                            } else {
                                                str15 = str3;
                                                obj4 = obj2;
                                                string = str46;
                                            }
                                            str3 = str15;
                                            int i21 = intRef.element;
                                            String vedio_url2 = gameEntity.getVedio_url();
                                            obj2 = obj4;
                                            String game_info_top_pic3 = gameEntity.getGame_info_top_pic();
                                            str43 = str43;
                                            Intrinsics.checkNotNullExpressionValue(game_info_top_pic3, "getGame_info_top_pic(...)");
                                            String game_info_top_video_url3 = gameEntity.getGame_info_top_video_url();
                                            List listEmptyList7 = CollectionsKt__CollectionsKt.emptyList();
                                            String game_name6 = gameEntity.getGame_name();
                                            str44 = str44;
                                            String str513 = str2;
                                            Intrinsics.checkNotNullExpressionValue(game_name6, str513);
                                            str2 = str513;
                                            String info6 = gameEntity.getInfo();
                                            Intrinsics.checkNotNullExpressionValue(info6, str5);
                                            str16 = str5;
                                            StringBuilder sb16 = new StringBuilder();
                                            if (string != null) {
                                                strSubstring = string.substring(0, Math.max(0, string.length() - 2));
                                                str17 = str4;
                                                Intrinsics.checkNotNullExpressionValue(strSubstring, str17);
                                            } else {
                                                str17 = str4;
                                                strSubstring = null;
                                            }
                                            sb16.append(strSubstring);
                                            sb16.append(" | ");
                                            sb16.append(UtilsMy.Z2(gameEntity.getActual_size()));
                                            MustplayItemBean mustplayItemBean2 = new MustplayItemBean(i21, vedio_url2, game_info_top_pic3, game_info_top_video_url3, listEmptyList7, game_name6, info6, gameEntity, sb16.toString(), null, 512, null);
                                            StringBuilder sb17 = new StringBuilder();
                                            sb17.append("1-2-");
                                            sb17.append(i11);
                                            sb17.append('-');
                                            i12++;
                                            sb17.append(i12);
                                            arrayList.add(new CommonListMainData(4, mustplayItemBean2, sb17.toString(), null, 8, null));
                                            intRef.element++;
                                            str12 = str16;
                                            str13 = str46;
                                            str14 = str17;
                                        } else {
                                            str12 = str5;
                                            str13 = str46;
                                            str14 = str4;
                                        }
                                        str5 = str12;
                                        str4 = str14;
                                        it4 = it5;
                                        i13 = i15;
                                        str43 = str43;
                                        str44 = str44;
                                        btReginModle = btReginModle;
                                        str46 = str13;
                                        str45 = str45;
                                    }
                                    str6 = str44;
                                    str7 = str43;
                                    btReginModle2 = btReginModle;
                                    str8 = str5;
                                    str9 = str46;
                                    str10 = str45;
                                    str11 = str4;
                                    Unit unit7 = Unit.INSTANCE;
                                } else {
                                    str6 = str44;
                                    str7 = str43;
                                    btReginModle2 = btReginModle;
                                    str8 = str5;
                                    str9 = str46;
                                    str10 = str45;
                                    str11 = str4;
                                }
                                anonymousClass1 = this;
                                it2 = it3;
                                i10 = i11;
                                str5 = str8;
                                str4 = str11;
                                str43 = str7;
                                str44 = str6;
                                btReginModle = btReginModle2;
                                str46 = str9;
                                str45 = str10;
                            }
                            List<CommonListMainData> value4 = anonymousClass1.this$0.getShowDatas().getValue();
                            Intrinsics.checkNotNull(value4);
                            value4.addAll(arrayList);
                            anonymousClass1.this$0.setPage(anonymousClass1.this$0.getPage() + 1);
                            anonymousClass1.this$0.getRecycleViewStatus().setValue(Boxing.boxInt(2));
                            anonymousClass1.this$0.getShowDatas().setValue(anonymousClass1.this$0.getShowDatas().getValue());
                        } else {
                            anonymousClass1.this$0.getRecycleViewStatus().setValue(Boxing.boxInt(4));
                        }
                    } catch (Exception e11) {
                        e = e11;
                    }
                }
            } else {
                a3.b(anonymousClass1.$context).d(anonymousClass1.$result.element.getMessage());
            }
            List<CommonListMainData> value5 = anonymousClass1.this$0.getShowDatas().getValue();
            Intrinsics.checkNotNull(value5);
            if (value5.size() > 0) {
                anonymousClass1.this$0.getLoadBindData().setValue(new LoadBindindData(1));
            } else {
                anonymousClass1.this$0.getLoadBindData().setValue(new LoadBindindData(3));
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BtReginModle$loadDatas$job$1(Ref.ObjectRef<RequestModel<RequestGameIdArgs>> objectRef, BtReginModle btReginModle, Context context, Continuation<? super BtReginModle$loadDatas$job$1> continuation) {
        super(2, continuation);
        this.$requestModel = objectRef;
        this.this$0 = btReginModle;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BtReginModle$loadDatas$job$1(this.$requestModel, this.this$0, this.$context, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref.ObjectRef objectRef;
        T t10;
        Ref.ObjectRef objectRef2;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            Ref.ObjectRef<RequestModel<RequestGameIdArgs>> objectRef4 = this.$requestModel;
            CoroutineDispatcher coroutineDispatcherC = z0.c();
            BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1 btReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1 = new BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1(null, objectRef4);
            this.L$0 = objectRef3;
            this.L$1 = objectRef3;
            this.label = 1;
            Object objH = h.h(coroutineDispatcherC, btReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1, this);
            if (objH == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef3;
            t10 = objH;
            objectRef2 = objectRef;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) this.L$1;
            objectRef2 = (Ref.ObjectRef) this.L$0;
            ResultKt.throwOnFailure(obj);
            t10 = obj;
        }
        objectRef.element = t10;
        j.f(o1.f93610b, z0.e(), null, new AnonymousClass1(objectRef2, this.this$0, this.$context, null), 2, null);
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
        return ((BtReginModle$loadDatas$job$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
