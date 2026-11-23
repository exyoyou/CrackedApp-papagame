.class public final Lcom/join/kotlin/zone/CommonZoneActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/notice/ClickProxy;
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity<",
        "Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/b0;",
        ">;",
        "Lcom/join/kotlin/ui/notice/ClickProxy;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonZoneActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonZoneActivity.kt\ncom/join/kotlin/zone/CommonZoneActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,299:1\n1869#2:300\n1869#2,2:301\n1870#2:303\n*S KotlinDebug\n*F\n+ 1 CommonZoneActivity.kt\ncom/join/kotlin/zone/CommonZoneActivity\n*L\n257#1:300\n267#1:301,2\n257#1:303\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020!H\u0014J\u0008\u0010(\u001a\u00020!H\u0014J\u0006\u0010)\u001a\u00020!J\u0008\u0010*\u001a\u00020!H\u0014J\u0008\u0010+\u001a\u00020!H\u0016J\u0008\u0010,\u001a\u00020!H\u0016J\u0010\u0010-\u001a\u00020!2\u0006\u0010.\u001a\u00020/H\u0016J\u0008\u00100\u001a\u00020!H\u0016J\u0008\u00101\u001a\u00020!H\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000e\u001a\u00020\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u00062"
    }
    d2 = {
        "Lcom/join/kotlin/zone/CommonZoneActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity;",
        "Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityCommonZoneBinding;",
        "Lcom/join/kotlin/ui/notice/ClickProxy;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;",
        "<init>",
        "()V",
        "videoHelper",
        "Lcom/join/android/app/component/video/RvListVideoHelper;",
        "getVideoHelper",
        "()Lcom/join/android/app/component/video/RvListVideoHelper;",
        "setVideoHelper",
        "(Lcom/join/android/app/component/video/RvListVideoHelper;)V",
        "commonZoneAdapter",
        "Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;",
        "getCommonZoneAdapter",
        "()Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;",
        "commonZoneAdapter$delegate",
        "Lkotlin/Lazy;",
        "zoneId",
        "",
        "getZoneId",
        "()Ljava/lang/String;",
        "setZoneId",
        "(Ljava/lang/String;)V",
        "extBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDownloadStatusChanged",
        "event",
        "Lcom/join/mgps/event/DownloadTaskEvent;",
        "onPause",
        "onResume",
        "autoPlay",
        "onDestroy",
        "onClickReload",
        "onClickSetNetWork",
        "onClickItem",
        "data",
        "Lcom/join/mgps/dto/BTActivityBean;",
        "onClickBack",
        "createObserver",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommonZoneActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonZoneActivity.kt\ncom/join/kotlin/zone/CommonZoneActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,299:1\n1869#2:300\n1869#2,2:301\n1870#2:303\n*S KotlinDebug\n*F\n+ 1 CommonZoneActivity.kt\ncom/join/kotlin/zone/CommonZoneActivity\n*L\n257#1:300\n267#1:301,2\n257#1:303\n*E\n"
    }
.end annotation


# instance fields
.field private final commonZoneAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private videoHelper:Lcom/join/android/app/component/video/h;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private zoneId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/zone/b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/kotlin/zone/b;-><init>(Lcom/join/kotlin/zone/CommonZoneActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->commonZoneAdapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    const-string v0, "461506587"

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->zoneId:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private static final commonZoneAdapter_delegate$lambda$0(Lcom/join/kotlin/zone/CommonZoneActivity;)Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;-><init>(Lcom/join/android/app/component/video/h;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private static final createObserver$lambda$18$lambda$17(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Lcom/join/kotlin/zone/CommonZoneActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance p1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 8
    .line 9
    const/4 p2, 0x3

    .line 10
    invoke-direct {p1, p2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v2, Lcom/join/kotlin/zone/d;

    .line 18
    .line 19
    invoke-direct {v2, p0, p1}, Lcom/join/kotlin/zone/d;-><init>(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Lcom/join/kotlin/zone/CommonZoneActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/join/kotlin/zone/e;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Lcom/join/kotlin/zone/e;-><init>(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;)V

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/16 v5, 0x8

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v0, p1

    .line 32
    move-object v1, p2

    .line 33
    invoke-static/range {v0 .. v6}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->parseState$default(Lcom/join/kotlin/base/activity/BaseVmActivity;Lcom/join/kotlin/base/state/ResultState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method private static final createObserver$lambda$18$lambda$17$lambda$15(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Lcom/join/kotlin/zone/CommonZoneActivity;Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;)Lkotlin/Unit;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v3, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 15
    .line 16
    invoke-direct {v3, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v3, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    if-eqz p2, :cond_d

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->getTitle()Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p2}, Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;->getTitle()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;->getHeadAdInfo()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const/16 v3, 0x9f

    .line 59
    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;->getHeadAdInfo()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-virtual {p2}, Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;->getHeadAdInfo()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const/4 v8, 0x2

    .line 80
    const/4 v9, 0x0

    .line 81
    move-object v4, p0

    .line 82
    invoke-direct/range {v4 .. v9}, Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;-><init>(ILjava/lang/Integer;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {p2}, Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;->getRecGameInfo()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    if-eqz p0, :cond_5

    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;->getRecGameInfo()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    if-eqz p0, :cond_2

    .line 99
    .line 100
    invoke-virtual {p0, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 104
    .line 105
    .line 106
    :cond_2
    new-instance p0, Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;

    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;->getRecGameInfo()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    const/4 v4, 0x0

    .line 120
    :goto_1
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_4

    .line 125
    .line 126
    const/4 v1, 0x6

    .line 127
    const/4 v5, 0x6

    .line 128
    goto :goto_2

    .line 129
    :cond_4
    const/4 v5, 0x3

    .line 130
    :goto_2
    const/4 v6, 0x0

    .line 131
    invoke-virtual {p2}, Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;->getRecGameInfo()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    const/4 v8, 0x2

    .line 136
    const/4 v9, 0x0

    .line 137
    move-object v4, p0

    .line 138
    invoke-direct/range {v4 .. v9}, Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;-><init>(ILjava/lang/Integer;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_5
    invoke-virtual {p2}, Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;->getComponents()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    if-eqz p0, :cond_c

    .line 149
    .line 150
    check-cast p0, Ljava/lang/Iterable;

    .line 151
    .line 152
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-eqz p2, :cond_c

    .line 161
    .line 162
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    check-cast p2, Lcom/join/kotlin/zone/model/bean/ZoneComponentsBean;

    .line 167
    .line 168
    invoke-virtual {p2}, Lcom/join/kotlin/zone/model/bean/ZoneComponentsBean;->getTitle()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const/4 v4, 0x0

    .line 173
    if-eqz v1, :cond_8

    .line 174
    .line 175
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-lez v1, :cond_7

    .line 180
    .line 181
    const/4 v1, 0x1

    .line 182
    goto :goto_3

    .line 183
    :cond_7
    const/4 v1, 0x0

    .line 184
    :goto_3
    if-ne v1, v2, :cond_8

    .line 185
    .line 186
    const/4 v4, 0x1

    .line 187
    :cond_8
    if-eqz v4, :cond_9

    .line 188
    .line 189
    new-instance v1, Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;

    .line 190
    .line 191
    const/4 v6, 0x2

    .line 192
    const/4 v7, 0x0

    .line 193
    invoke-virtual {p2}, Lcom/join/kotlin/zone/model/bean/ZoneComponentsBean;->getTitle()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    const/4 v9, 0x2

    .line 198
    const/4 v10, 0x0

    .line 199
    move-object v5, v1

    .line 200
    invoke-direct/range {v5 .. v10}, Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;-><init>(ILjava/lang/Integer;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    :cond_9
    invoke-virtual {p2}, Lcom/join/kotlin/zone/model/bean/ZoneComponentsBean;->getGameInfoList()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    if-eqz v1, :cond_6

    .line 211
    .line 212
    invoke-virtual {p2}, Lcom/join/kotlin/zone/model/bean/ZoneComponentsBean;->getGameInfoList()Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    check-cast p2, Ljava/lang/Iterable;

    .line 217
    .line 218
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_6

    .line 227
    .line 228
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    move-object v7, v1

    .line 233
    check-cast v7, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 234
    .line 235
    if-eqz v7, :cond_a

    .line 236
    .line 237
    invoke-virtual {v7, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 241
    .line 242
    .line 243
    :cond_a
    new-instance v1, Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;

    .line 244
    .line 245
    invoke-virtual {v7}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTpl_type()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-ne v4, v2, :cond_b

    .line 250
    .line 251
    const/4 v4, 0x4

    .line 252
    const/4 v5, 0x4

    .line 253
    goto :goto_5

    .line 254
    :cond_b
    const/4 v4, 0x5

    .line 255
    const/4 v5, 0x5

    .line 256
    :goto_5
    const/4 v6, 0x0

    .line 257
    const/4 v8, 0x2

    .line 258
    const/4 v9, 0x0

    .line 259
    move-object v4, v1

    .line 260
    invoke-direct/range {v4 .. v9}, Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;-><init>(ILjava/lang/Integer;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_c
    invoke-virtual {p1}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    check-cast p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;

    .line 272
    .line 273
    invoke-virtual {p0, v0}, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->setShowData(Ljava/util/List;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/join/kotlin/zone/CommonZoneActivity;->getCommonZoneAdapter()Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-virtual {p1}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    check-cast p2, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;

    .line 285
    .line 286
    invoke-virtual {p2}, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->getShowData()Ljava/util/List;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/b0;

    .line 298
    .line 299
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/b0;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadMoreComplete()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/join/kotlin/zone/CommonZoneActivity;->autoPlay()V

    .line 305
    .line 306
    .line 307
    :cond_d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 308
    .line 309
    return-object p0
.end method

.method private static final createObserver$lambda$18$lambda$17$lambda$16(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/AppException;->getErrorMsg()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance p1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    invoke-direct {p1, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final initView$lambda$4$lambda$3(Lcom/join/kotlin/zone/CommonZoneActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "<unused var>"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;->getData()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p2, 0x0

    .line 25
    :goto_0
    instance-of p3, p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 26
    .line 27
    if-eqz p3, :cond_3

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;->getViewType()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 v0, 0x1

    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    .line 39
    const/4 p3, 0x1

    .line 40
    :cond_1
    if-eqz p3, :cond_2

    .line 41
    .line 42
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object p3, Lcom/papa/sim/statistic/Event;->clickAD:Lcom/papa/sim/statistic/Event;

    .line 47
    .line 48
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "1"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, p3, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p0, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void
.end method

.method public static synthetic j(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Lcom/join/kotlin/zone/CommonZoneActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/zone/CommonZoneActivity;->createObserver$lambda$18$lambda$17(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Lcom/join/kotlin/zone/CommonZoneActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/kotlin/zone/CommonZoneActivity;)Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/zone/CommonZoneActivity;->commonZoneAdapter_delegate$lambda$0(Lcom/join/kotlin/zone/CommonZoneActivity;)Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/join/kotlin/zone/CommonZoneActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/zone/CommonZoneActivity;->initView$lambda$4$lambda$3(Lcom/join/kotlin/zone/CommonZoneActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic m(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/zone/CommonZoneActivity;->createObserver$lambda$18$lambda$17$lambda$16(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Lcom/join/kotlin/zone/CommonZoneActivity;Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/zone/CommonZoneActivity;->createObserver$lambda$18$lambda$17$lambda$15(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Lcom/join/kotlin/zone/CommonZoneActivity;Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final autoPlay()V
    .locals 6

    .line 1
    sget-object v0, Lkotlinx/coroutines/o1;->b:Lkotlinx/coroutines/o1;

    .line 2
    .line 3
    invoke-static {}, Lkotlinx/coroutines/z0;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    new-instance v3, Lcom/join/kotlin/zone/CommonZoneActivity$autoPlay$1;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v3, p0, v4}, Lcom/join/kotlin/zone/CommonZoneActivity$autoPlay$1;-><init>(Lcom/join/kotlin/zone/CommonZoneActivity;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/l0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public createObserver()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->getZoneData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/join/kotlin/zone/c;

    .line 12
    .line 13
    invoke-direct {v2, v0, p0}, Lcom/join/kotlin/zone/c;-><init>(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Lcom/join/kotlin/zone/CommonZoneActivity;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/join/kotlin/zone/CommonZoneActivity$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v0, v2}, Lcom/join/kotlin/zone/CommonZoneActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getCommonZoneAdapter()Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->commonZoneAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideoHelper()Lcom/join/android/app/component/video/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getZoneId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->zoneId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-string v0, "extBean"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "null cannot be cast to non-null type com.join.mgps.dto.ExtBean"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lcom/papa/sim/statistic/Event;->visitPCPageZone:Lcom/papa/sim/statistic/Event;

    .line 29
    .line 30
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 31
    .line 32
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    const-string v0, "zoneId"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->zoneId:Ljava/lang/String;

    .line 58
    .line 59
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->zoneId:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 68
    .line 69
    .line 70
    const-string p1, "\u6570\u636e\u5f02\u5e38[zoneId==null]\uff0c\u8bf7\u91cd\u8bd5"

    .line 71
    .line 72
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->zoneId:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->getGameZone(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b0;

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/b0;->B(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b0;

    .line 110
    .line 111
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/b0;->A(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b0;

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/b0;->z(Lcom/join/kotlin/ui/notice/ClickProxy;)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Lcom/join/android/app/component/video/h;

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/b0;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/b0;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 132
    .line 133
    const-string v1, "CommonZoneActivityVideoHelper"

    .line 134
    .line 135
    invoke-direct {p1, v0, v1}, Lcom/join/android/app/component/video/h;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iput-object p1, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b0;

    .line 145
    .line 146
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/b0;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 147
    .line 148
    const-string p1, "xrvList"

    .line 149
    .line 150
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v1, Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager;

    .line 154
    .line 155
    const/4 p1, 0x2

    .line 156
    invoke-direct {v1, p0, p1}, Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/join/kotlin/zone/CommonZoneActivity;->getCommonZoneAdapter()Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    const/4 v3, 0x0

    .line 164
    const/4 v4, 0x4

    .line 165
    const/4 v5, 0x0

    .line 166
    invoke-static/range {v0 .. v5}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->init$default(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/RecyclerView$Adapter;ZILjava/lang/Object;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setPullRefreshEnabled(Z)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 175
    .line 176
    .line 177
    new-instance v0, Lcom/join/kotlin/zone/CommonZoneActivity$initView$2$1;

    .line 178
    .line 179
    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/zone/CommonZoneActivity$initView$2$1;-><init>(Lcom/join/kotlin/zone/CommonZoneActivity;Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/join/kotlin/zone/CommonZoneActivity;->getCommonZoneAdapter()Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    new-instance v0, Lcom/join/kotlin/zone/a;

    .line 190
    .line 191
    invoke-direct {v0, p0}, Lcom/join/kotlin/zone/a;-><init>(Lcom/join/kotlin/zone/CommonZoneActivity;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b0;

    .line 202
    .line 203
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b0;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 204
    .line 205
    new-instance v0, Lcom/join/kotlin/zone/CommonZoneActivity$initView$4;

    .line 206
    .line 207
    invoke-direct {v0, p0}, Lcom/join/kotlin/zone/CommonZoneActivity$initView$4;-><init>(Lcom/join/kotlin/zone/CommonZoneActivity;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public onClickBack()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClickItem(Lcom/join/mgps/dto/BTActivityBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/BTActivityBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onClickReload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->zoneId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->zoneId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->getGameZone(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onClickSetNetWork()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->x()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/join/kotlin/base/activity/BaseDownloadActivity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDownloadStatusChanged(Lcom/join/mgps/event/r;)V
    .locals 1
    .param p1    # Lcom/join/mgps/event/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/join/kotlin/base/activity/BaseDownloadActivity;->onDownloadStatusChanged(Lcom/join/mgps/event/r;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->y()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->E()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setVideoHelper(Lcom/join/android/app/component/video/h;)V
    .locals 0
    .param p1    # Lcom/join/android/app/component/video/h;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 2
    .line 3
    return-void
.end method

.method public final setZoneId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/zone/CommonZoneActivity;->zoneId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
