.class public final Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCategoryDetailListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoryDetailListActivity.kt\ncom/join/kotlin/ui/findgame/CategoryDetailListActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,504:1\n774#2:505\n865#2,2:506\n774#2:508\n865#2,2:509\n1869#2:511\n774#2:512\n865#2,2:513\n1870#2:515\n1563#2:517\n1634#2,3:518\n774#2:521\n865#2,2:522\n1374#2:524\n1460#2,5:525\n1869#2,2:530\n774#2:532\n865#2,2:533\n1374#2:535\n1460#2,5:536\n1869#2,2:541\n774#2:543\n865#2,2:544\n1374#2:546\n1460#2,5:547\n1869#2,2:552\n1563#2:554\n1634#2,2:555\n774#2:557\n865#2,2:558\n1636#2:560\n1374#2:561\n1460#2,2:562\n1563#2:564\n1634#2,3:565\n1462#2,3:568\n1869#2,2:571\n1869#2,2:573\n1#3:516\n*S KotlinDebug\n*F\n+ 1 CategoryDetailListActivity.kt\ncom/join/kotlin/ui/findgame/CategoryDetailListActivity\n*L\n70#1:505\n70#1:506,2\n74#1:508\n74#1:509,2\n77#1:511\n78#1:512\n78#1:513,2\n77#1:515\n176#1:517\n176#1:518,3\n298#1:521\n298#1:522,2\n298#1:524\n298#1:525,5\n299#1:530,2\n313#1:532\n313#1:533,2\n313#1:535\n313#1:536,5\n314#1:541,2\n328#1:543\n328#1:544,2\n328#1:546\n328#1:547,5\n329#1:552,2\n402#1:554\n402#1:555,2\n403#1:557\n403#1:558,2\n402#1:560\n404#1:561\n404#1:562,2\n405#1:564\n405#1:565,3\n404#1:568,3\n410#1:571,2\n493#1:573,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010^\u001a\u00020_2\u0008\u0010`\u001a\u0004\u0018\u00010aH\u0014J\u0008\u0010b\u001a\u00020_H\u0002J\u0010\u0010c\u001a\u00020_2\u0006\u0010d\u001a\u00020\u0018H\u0002J\u0006\u0010e\u001a\u00020_J\u0008\u0010f\u001a\u00020_H\u0002J\u0010\u0010k\u001a\u00020_2\u0006\u0010l\u001a\u00020\u0018H\u0002J\u001e\u0010m\u001a\u00020_2\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00020h0\u001e2\u0006\u0010n\u001a\u000201H\u0002J\u0008\u0010o\u001a\u00020_H\u0002J\u0018\u0010p\u001a\u00020_2\u0006\u0010q\u001a\u00020r2\u0006\u0010n\u001a\u000201H\u0002J\u0008\u0010s\u001a\u00020_H\u0002J\u0008\u0010t\u001a\u00020_H\u0002J\u0012\u0010u\u001a\u00020_2\u0008\u0010v\u001a\u0004\u0018\u00010wH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR \u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001a\u0010*\u001a\u00020+X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001a\u00100\u001a\u000201X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001a\u00106\u001a\u000207X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001a\u0010<\u001a\u000201X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u00103\"\u0004\u0008>\u00105R\u001a\u0010?\u001a\u000201X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u00103\"\u0004\u0008A\u00105R\u001a\u0010B\u001a\u000201X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u00103\"\u0004\u0008D\u00105R\u001a\u0010E\u001a\u000201X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u00103\"\u0004\u0008G\u00105R\u001a\u0010H\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR*\u0010M\u001a\u0012\u0012\u0004\u0012\u00020O0Nj\u0008\u0012\u0004\u0012\u00020O`PX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u001c\u0010U\u001a\u0004\u0018\u00010VX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR\u001a\u0010[\u001a\u00020VX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010X\"\u0004\u0008]\u0010ZR \u0010g\u001a\u0008\u0012\u0004\u0012\u00020h0\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010!\"\u0004\u0008j\u0010#\u00a8\u0006x"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;",
        "Lcom/BaseAppCompatActivity;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "()V",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/CategroyGamelistActivityBinding;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/CategroyGamelistActivityBinding;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/CategroyGamelistActivityBinding;)V",
        "requestArgs",
        "Lcom/join/kotlin/ui/findgame/data/CategoryRequest;",
        "getRequestArgs",
        "()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;",
        "setRequestArgs",
        "(Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "page",
        "",
        "getPage",
        "()I",
        "setPage",
        "(I)V",
        "gameTypeList",
        "",
        "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
        "getGameTypeList",
        "()Ljava/util/List;",
        "setGameTypeList",
        "(Ljava/util/List;)V",
        "leftTypeAdapter",
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;",
        "getLeftTypeAdapter",
        "()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;",
        "setLeftTypeAdapter",
        "(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;)V",
        "findTypeAdapter",
        "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;",
        "getFindTypeAdapter",
        "()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;",
        "setFindTypeAdapter",
        "(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;)V",
        "featureType",
        "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
        "getFeatureType",
        "()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
        "setFeatureType",
        "(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V",
        "gameSortType",
        "Lcom/join/kotlin/ui/findgame/data/TagData;",
        "getGameSortType",
        "()Lcom/join/kotlin/ui/findgame/data/TagData;",
        "setGameSortType",
        "(Lcom/join/kotlin/ui/findgame/data/TagData;)V",
        "gameType",
        "getGameType",
        "setGameType",
        "modelType",
        "getModelType",
        "setModelType",
        "playType",
        "getPlayType",
        "setPlayType",
        "themeType",
        "getThemeType",
        "setThemeType",
        "tabType",
        "getTabType",
        "()Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
        "setTabType",
        "(Lcom/join/kotlin/ui/findgame/data/GameTypeData;)V",
        "fragments",
        "Ljava/util/ArrayList;",
        "Landroidx/fragment/app/Fragment;",
        "Lkotlin/collections/ArrayList;",
        "getFragments",
        "()Ljava/util/ArrayList;",
        "setFragments",
        "(Ljava/util/ArrayList;)V",
        "parentExtBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getParentExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setParentExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "pageExtBean",
        "getPageExtBean",
        "setPageExtBean",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "initView",
        "notifyTabSelected",
        "position",
        "reLoadDatas",
        "showFilterLayout",
        "datas",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "getDatas",
        "setDatas",
        "showTypeList",
        "id",
        "onfindTypeSelected",
        "type",
        "updateSelectedTagList",
        "updateSelectedTagitem",
        "textview",
        "Landroid/widget/TextView;",
        "updateTitle",
        "updateRequestArgs",
        "onClick",
        "v",
        "Landroid/view/View;",
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
        "SMAP\nCategoryDetailListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoryDetailListActivity.kt\ncom/join/kotlin/ui/findgame/CategoryDetailListActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,504:1\n774#2:505\n865#2,2:506\n774#2:508\n865#2,2:509\n1869#2:511\n774#2:512\n865#2,2:513\n1870#2:515\n1563#2:517\n1634#2,3:518\n774#2:521\n865#2,2:522\n1374#2:524\n1460#2,5:525\n1869#2,2:530\n774#2:532\n865#2,2:533\n1374#2:535\n1460#2,5:536\n1869#2,2:541\n774#2:543\n865#2,2:544\n1374#2:546\n1460#2,5:547\n1869#2,2:552\n1563#2:554\n1634#2,2:555\n774#2:557\n865#2,2:558\n1636#2:560\n1374#2:561\n1460#2,2:562\n1563#2:564\n1634#2,3:565\n1462#2,3:568\n1869#2,2:571\n1869#2,2:573\n1#3:516\n*S KotlinDebug\n*F\n+ 1 CategoryDetailListActivity.kt\ncom/join/kotlin/ui/findgame/CategoryDetailListActivity\n*L\n70#1:505\n70#1:506,2\n74#1:508\n74#1:509,2\n77#1:511\n78#1:512\n78#1:513,2\n77#1:515\n176#1:517\n176#1:518,3\n298#1:521\n298#1:522,2\n298#1:524\n298#1:525,5\n299#1:530,2\n313#1:532\n313#1:533,2\n313#1:535\n313#1:536,5\n314#1:541,2\n328#1:543\n328#1:544,2\n328#1:546\n328#1:547,5\n329#1:552,2\n402#1:554\n402#1:555,2\n403#1:557\n403#1:558,2\n402#1:560\n404#1:561\n404#1:562,2\n405#1:564\n405#1:565,3\n404#1:568,3\n410#1:571,2\n493#1:573,2\n*E\n"
    }
.end annotation


# instance fields
.field public binding:Lcom/join/android/app/mgsim/wufun/databinding/e8;

.field public context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public findTypeAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public gameTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;"
        }
    .end annotation
.end field

.field public leftTypeAdapter:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

.field private modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private page:I

.field private pageExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->page:I

    .line 13
    .line 14
    new-instance v1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 20
    .line 21
    new-instance v1, Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 22
    .line 23
    const-string v2, "\u7efc\u5408"

    .line 24
    .line 25
    invoke-direct {v1, v0, v0, v2}, Lcom/join/kotlin/ui/findgame/data/TagData;-><init>(IILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 29
    .line 30
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 36
    .line 37
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 43
    .line 44
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 50
    .line 51
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 57
    .line 58
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 64
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->fragments:Ljava/util/ArrayList;

    .line 71
    .line 72
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 73
    .line 74
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 78
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->datas:Ljava/util/List;

    .line 85
    .line 86
    return-void
.end method

.method public static final synthetic access$notifyTabSelected(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->notifyTabSelected(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onfindTypeSelected(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;Ljava/util/List;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->onfindTypeSelected(Ljava/util/List;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$showTypeList(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->showTypeList(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initView()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setId(I)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setType(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->p:Landroid/widget/LinearLayout;

    const-string v2, "typeMainLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/join/kotlin/ui/findgame/g;

    invoke-direct {v2}, Lcom/join/kotlin/ui/findgame/g;-><init>()V

    invoke-static {v0, v2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "typeId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "tagId"

    const/4 v4, 0x3

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_18

    .line 6
    :pswitch_0
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setId(I)V

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v0, v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setType(I)V

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setFeatureType(I)V

    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v7

    if-ne v7, v6, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_0

    goto :goto_1

    :cond_2
    move-object v2, v5

    :goto_1
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_25

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->getFeatureType()I

    move-result v7

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    goto :goto_3

    :cond_5
    move-object v2, v5

    :goto_3
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    if-eqz v2, :cond_25

    .line 10
    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 11
    iput-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    goto/16 :goto_18

    .line 12
    :pswitch_1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setId(I)V

    .line 13
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v0, v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setType(I)V

    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setPlayType(I)V

    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v7

    if-ne v7, v6, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_6

    goto :goto_5

    :cond_8
    move-object v2, v5

    :goto_5
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_25

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->getPlayType()I

    move-result v7

    if-ne v6, v7, :cond_a

    const/4 v6, 0x1

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_9

    goto :goto_7

    :cond_b
    move-object v2, v5

    :goto_7
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    if-eqz v2, :cond_25

    .line 16
    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 17
    iput-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    goto/16 :goto_18

    .line 18
    :pswitch_2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setId(I)V

    .line 19
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v0, v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setType(I)V

    .line 20
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setThemeType(I)V

    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v7

    if-ne v7, v6, :cond_d

    const/4 v7, 0x1

    goto :goto_8

    :cond_d
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_c

    goto :goto_9

    :cond_e
    move-object v2, v5

    :goto_9
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_25

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->getThemeType()I

    move-result v7

    if-ne v6, v7, :cond_10

    const/4 v6, 0x1

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_f

    goto :goto_b

    :cond_11
    move-object v2, v5

    :goto_b
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    if-eqz v2, :cond_25

    .line 22
    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 23
    iput-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    goto/16 :goto_18

    .line 24
    :pswitch_3
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v0, v4}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setId(I)V

    .line 25
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v0, v4}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setType(I)V

    .line 26
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setGameType(I)V

    .line 27
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v6

    if-ne v6, v4, :cond_13

    const/4 v6, 0x1

    goto :goto_c

    :cond_13
    const/4 v6, 0x0

    :goto_c
    if-eqz v6, :cond_12

    goto :goto_d

    :cond_14
    move-object v2, v5

    :goto_d
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_25

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->getGameType()I

    move-result v7

    if-ne v6, v7, :cond_16

    const/4 v6, 0x1

    goto :goto_e

    :cond_16
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_15

    goto :goto_f

    :cond_17
    move-object v2, v5

    :goto_f
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    if-eqz v2, :cond_25

    .line 28
    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 29
    iput-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    goto/16 :goto_18

    .line 30
    :pswitch_4
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setId(I)V

    .line 31
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setType(I)V

    .line 32
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setModelType(I)V

    .line 33
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v6

    if-ne v6, v1, :cond_19

    const/4 v6, 0x1

    goto :goto_10

    :cond_19
    const/4 v6, 0x0

    :goto_10
    if-eqz v6, :cond_18

    goto :goto_11

    :cond_1a
    move-object v2, v5

    :goto_11
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->getModelType()I

    move-result v7

    if-ne v6, v7, :cond_1c

    const/4 v6, 0x1

    goto :goto_12

    :cond_1c
    const/4 v6, 0x0

    :goto_12
    if-eqz v6, :cond_1b

    goto :goto_13

    :cond_1d
    move-object v2, v5

    :goto_13
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    if-eqz v2, :cond_1e

    .line 34
    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 35
    iput-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 36
    :cond_1e
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "tagId2"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_25

    .line 37
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v2, v4}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setId(I)V

    .line 38
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v2, v4}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setType(I)V

    .line 39
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {v2, v0}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setGameType(I)V

    .line 40
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v6

    if-ne v6, v4, :cond_20

    const/4 v6, 0x1

    goto :goto_14

    :cond_20
    const/4 v6, 0x0

    :goto_14
    if-eqz v6, :cond_1f

    goto :goto_15

    :cond_21
    move-object v2, v5

    :goto_15
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_25

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->getGameType()I

    move-result v7

    if-ne v6, v7, :cond_23

    const/4 v6, 0x1

    goto :goto_16

    :cond_23
    const/4 v6, 0x0

    :goto_16
    if-eqz v6, :cond_22

    goto :goto_17

    :cond_24
    move-object v2, v5

    :goto_17
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    if-eqz v2, :cond_25

    .line 41
    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 42
    iput-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 43
    :cond_25
    :goto_18
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->updateSelectedTagList()V

    .line 44
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getId()I

    move-result v7

    if-ne v6, v7, :cond_27

    const/4 v6, 0x1

    goto :goto_19

    :cond_27
    const/4 v6, 0x0

    :goto_19
    if-eqz v6, :cond_26

    goto :goto_1a

    :cond_28
    move-object v2, v5

    :goto_1a
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    if-eqz v2, :cond_29

    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setSelected(Z)V

    .line 45
    :cond_29
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->o:Lcom/join/android/app/mgsim/wufun/databinding/jw0;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/jw0;->c:Landroid/widget/ImageView;

    const-string v2, "backImage"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/join/kotlin/ui/findgame/h;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/findgame/h;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)V

    invoke-static {v0, v2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "tagName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    move-result-object v2

    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/e8;->o:Lcom/join/android/app/mgsim/wufun/databinding/jw0;

    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/jw0;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setUid(I)V

    .line 49
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    move-result-object v2

    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/e8;->e:Landroid/widget/TextView;

    const-string v6, "filter"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/join/kotlin/ui/findgame/i;

    invoke-direct {v6, p0}, Lcom/join/kotlin/ui/findgame/i;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)V

    invoke-static {v2, v6}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 50
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    move-result-object v2

    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/e8;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    move-result-object v2

    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-array v2, v4, [Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 52
    new-instance v6, Lcom/join/kotlin/ui/findgame/data/TagData;

    const-string v7, "\u7efc\u5408"

    invoke-direct {v6, v1, v7}, Lcom/join/kotlin/ui/findgame/data/TagData;-><init>(ILjava/lang/String;)V

    aput-object v6, v2, v3

    new-instance v6, Lcom/join/kotlin/ui/findgame/data/TagData;

    const-string v7, "\u6700\u65b0"

    const/4 v8, 0x2

    invoke-direct {v6, v8, v7}, Lcom/join/kotlin/ui/findgame/data/TagData;-><init>(ILjava/lang/String;)V

    aput-object v6, v2, v1

    new-instance v1, Lcom/join/kotlin/ui/findgame/data/TagData;

    const-string v6, "\u8bc4\u5206"

    invoke-direct {v1, v4, v6}, Lcom/join/kotlin/ui/findgame/data/TagData;-><init>(ILjava/lang/String;)V

    aput-object v1, v2, v8

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/Iterable;

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 56
    check-cast v6, Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 57
    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/TagData;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 59
    :cond_2a
    new-instance v1, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;

    iget-object v8, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    iget-object v9, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    iget-object v10, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    iget-object v11, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    iget-object v12, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;-><init>(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_2b

    const-string v7, "from"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 61
    :cond_2b
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_2c

    const-string v7, "parentExtBean"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    goto :goto_1c

    :cond_2c
    move-object v6, v5

    :goto_1c
    instance-of v7, v6, Lcom/join/mgps/dto/ExtBean;

    if-eqz v7, :cond_2d

    move-object v5, v6

    check-cast v5, Lcom/join/mgps/dto/ExtBean;

    :cond_2d
    iput-object v5, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 62
    iget-object v6, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v6, v5}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/join/mgps/dto/ExtBean;->setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 63
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->fragments:Ljava/util/ArrayList;

    .line 64
    sget-object v5, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->Companion:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 65
    iget-object v12, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    move-object v7, v5

    move-object v9, v1

    move v10, v3

    .line 66
    invoke-virtual/range {v7 .. v12}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;->newInstance(ILcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;IILcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    move-result-object v6

    .line 67
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->fragments:Ljava/util/ArrayList;

    const/4 v8, 0x2

    const/4 v11, 0x1

    .line 69
    iget-object v12, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 70
    invoke-virtual/range {v7 .. v12}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;->newInstance(ILcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;IILcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    move-result-object v6

    .line 71
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->fragments:Ljava/util/ArrayList;

    const/4 v8, 0x3

    const/4 v11, 0x2

    .line 73
    iget-object v12, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 74
    invoke-virtual/range {v7 .. v12}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;->newInstance(ILcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;IILcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->r:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/join/mgps/customview/e0;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    iget-object v5, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->fragments:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v5, v2}, Lcom/join/mgps/customview/e0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 77
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->r:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 78
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->c:Lcom/join/mgps/customview/SlidingTabLayout6;

    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    move-result-object v1

    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->r:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 79
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->r:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$23;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$23;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/join/kotlin/ui/findgame/j;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/findgame/j;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    new-instance v0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    .line 82
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getId()I

    move-result v1

    .line 84
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->datas:Ljava/util/List;

    .line 85
    new-instance v3, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$25;

    invoke-direct {v3, p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$25;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)V

    .line 86
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;)V

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->setFindTypeAdapter(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;)V

    .line 87
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getFindTypeAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    new-instance v0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    .line 89
    new-instance v1, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$26;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity$initView$26;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)V

    .line 90
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-direct {v0, p0, v1, v2}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;-><init>(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->setLeftTypeAdapter(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final initView$lambda$24(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final initView$lambda$25(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->showFilterLayout()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final initView$lambda$27(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->r:Landroidx/viewpager/widget/ViewPager;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-direct {p0, v0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->notifyTabSelected(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method private static final initView$lambda$4()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic j(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->initView$lambda$27(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)V

    return-void
.end method

.method public static synthetic k(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->initView$lambda$25(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->initView$lambda$4()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->initView$lambda$24(Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final notifyTabSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->fragments:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "iterator(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "next(...)"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    instance-of v2, v1, Lcom/join/mgps/callbacks/q;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    check-cast v1, Lcom/join/mgps/callbacks/q;

    .line 40
    .line 41
    invoke-interface {v1, p1}, Lcom/join/mgps/callbacks/q;->onPageVisible(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method private final onfindTypeSelected(Ljava/util/List;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;",
            "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/psk/kotlin/util/CommonListMainData;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.GameSubTypeData"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eq v1, v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ne v1, v2, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/4 v3, 0x0

    .line 51
    :goto_1
    invoke-virtual {v0, v3}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->isSelected()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    xor-int/2addr v1, v3

    .line 60
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getFindTypeAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getId()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    packed-switch p1, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    goto :goto_7

    .line 81
    :pswitch_0
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->isSelected()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    new-instance p2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 89
    .line 90
    invoke-direct {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 91
    .line 92
    .line 93
    :goto_2
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 94
    .line 95
    goto :goto_7

    .line 96
    :pswitch_1
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->isSelected()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    new-instance p2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 104
    .line 105
    invoke-direct {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 106
    .line 107
    .line 108
    :goto_3
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 109
    .line 110
    goto :goto_7

    .line 111
    :pswitch_2
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->isSelected()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_5
    new-instance p2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 119
    .line 120
    invoke-direct {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 121
    .line 122
    .line 123
    :goto_4
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 124
    .line 125
    goto :goto_7

    .line 126
    :pswitch_3
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->isSelected()Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_6
    new-instance p2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 134
    .line 135
    invoke-direct {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 136
    .line 137
    .line 138
    :goto_5
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 139
    .line 140
    goto :goto_7

    .line 141
    :pswitch_4
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->isSelected()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_7
    new-instance p2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 149
    .line 150
    invoke-direct {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 151
    .line 152
    .line 153
    :goto_6
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 154
    .line 155
    :goto_7
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->updateSelectedTagList()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final showFilterLayout()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->p:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->p:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->p:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getLeftTypeAdapter()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getId()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-direct {p0, v0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->showTypeList(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private final showTypeList(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->datas:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v1, 0x7f071310

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_f

    .line 23
    .line 24
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const/4 v6, 0x3

    .line 37
    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-lez v3, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    new-instance v4, Lcom/psk/kotlin/util/GridSpacingItemDecoration;

    .line 72
    .line 73
    invoke-direct {v4, v6, v0, v2}, Lcom/psk/kotlin/util/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/lang/Iterable;

    .line 84
    .line 85
    new-instance v3, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    move-object v5, v4

    .line 105
    check-cast v5, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 106
    .line 107
    invoke-virtual {v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-ne v5, p1, :cond_2

    .line 112
    .line 113
    const/4 v5, 0x1

    .line 114
    goto :goto_2

    .line 115
    :cond_2
    const/4 v5, 0x0

    .line 116
    :goto_2
    if-eqz v5, :cond_1

    .line 117
    .line 118
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_4

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    check-cast v2, Ljava/lang/Iterable;

    .line 151
    .line 152
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_f

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    move-object v4, v1

    .line 171
    check-cast v4, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 172
    .line 173
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->datas:Ljava/util/List;

    .line 174
    .line 175
    new-instance v9, Lcom/psk/kotlin/util/CommonListMainData;

    .line 176
    .line 177
    const/4 v3, 0x7

    .line 178
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    const/4 v5, 0x0

    .line 182
    const/4 v6, 0x0

    .line 183
    const/16 v7, 0xc

    .line 184
    .line 185
    const/4 v8, 0x0

    .line 186
    move-object v2, v9

    .line 187
    invoke-direct/range {v2 .. v8}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :pswitch_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 199
    .line 200
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getContext()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-direct {v4, v5, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 210
    .line 211
    .line 212
    :goto_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 217
    .line 218
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-lez v3, :cond_5

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 229
    .line 230
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 239
    .line 240
    new-instance v4, Lcom/psk/kotlin/util/GridSpacingItemDecoration;

    .line 241
    .line 242
    invoke-direct {v4, v1, v0, v2}, Lcom/psk/kotlin/util/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Ljava/lang/Iterable;

    .line 253
    .line 254
    new-instance v3, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-eqz v4, :cond_8

    .line 268
    .line 269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    move-object v5, v4

    .line 274
    check-cast v5, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 275
    .line 276
    invoke-virtual {v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    if-ne v5, p1, :cond_7

    .line 281
    .line 282
    const/4 v5, 0x1

    .line 283
    goto :goto_7

    .line 284
    :cond_7
    const/4 v5, 0x0

    .line 285
    :goto_7
    if-eqz v5, :cond_6

    .line 286
    .line 287
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-eqz v2, :cond_9

    .line 305
    .line 306
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 311
    .line 312
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    check-cast v2, Ljava/lang/Iterable;

    .line 320
    .line 321
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 322
    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_f

    .line 334
    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    move-object v4, v1

    .line 340
    check-cast v4, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 341
    .line 342
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->datas:Ljava/util/List;

    .line 343
    .line 344
    new-instance v9, Lcom/psk/kotlin/util/CommonListMainData;

    .line 345
    .line 346
    const/4 v3, 0x3

    .line 347
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    const/4 v5, 0x0

    .line 351
    const/4 v6, 0x0

    .line 352
    const/16 v7, 0xc

    .line 353
    .line 354
    const/4 v8, 0x0

    .line 355
    move-object v2, v9

    .line 356
    invoke-direct/range {v2 .. v8}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 357
    .line 358
    .line 359
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    goto :goto_9

    .line 363
    :pswitch_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 368
    .line 369
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 370
    .line 371
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getContext()Landroid/content/Context;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    const/4 v6, 0x2

    .line 376
    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 380
    .line 381
    .line 382
    :goto_a
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 387
    .line 388
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-lez v3, :cond_a

    .line 393
    .line 394
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 399
    .line 400
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 401
    .line 402
    .line 403
    goto :goto_a

    .line 404
    :cond_a
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/e8;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 409
    .line 410
    new-instance v4, Lcom/psk/kotlin/util/GridSpacingItemDecoration;

    .line 411
    .line 412
    invoke-direct {v4, v6, v0, v2}, Lcom/psk/kotlin/util/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    check-cast v0, Ljava/lang/Iterable;

    .line 423
    .line 424
    new-instance v3, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .line 428
    .line 429
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    if-eqz v4, :cond_d

    .line 438
    .line 439
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    move-object v5, v4

    .line 444
    check-cast v5, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 445
    .line 446
    invoke-virtual {v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    if-ne v5, p1, :cond_c

    .line 451
    .line 452
    const/4 v5, 0x1

    .line 453
    goto :goto_c

    .line 454
    :cond_c
    const/4 v5, 0x0

    .line 455
    :goto_c
    if-eqz v5, :cond_b

    .line 456
    .line 457
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    goto :goto_b

    .line 461
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .line 465
    .line 466
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    if-eqz v2, :cond_e

    .line 475
    .line 476
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 481
    .line 482
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    check-cast v2, Ljava/lang/Iterable;

    .line 490
    .line 491
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 492
    .line 493
    .line 494
    goto :goto_d

    .line 495
    :cond_e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    if-eqz v1, :cond_f

    .line 504
    .line 505
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    move-object v4, v1

    .line 510
    check-cast v4, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 511
    .line 512
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->datas:Ljava/util/List;

    .line 513
    .line 514
    new-instance v9, Lcom/psk/kotlin/util/CommonListMainData;

    .line 515
    .line 516
    const/4 v3, 0x3

    .line 517
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    const/4 v5, 0x0

    .line 521
    const/4 v6, 0x0

    .line 522
    const/16 v7, 0xc

    .line 523
    .line 524
    const/4 v8, 0x0

    .line 525
    move-object v2, v9

    .line 526
    invoke-direct/range {v2 .. v8}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 527
    .line 528
    .line 529
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    goto :goto_e

    .line 533
    :cond_f
    :goto_f
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getFindTypeAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->updateDatas(I)V

    .line 538
    .line 539
    .line 540
    return-void

    .line 541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final updateRequestArgs()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->page:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setPage(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->resetData()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setUid(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setModelType(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setGameType(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setThemeType(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setPlayType(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setFeatureType(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/TagData;->getId()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setGameSortType(I)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method private final updateSelectedTagList()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->h:Landroid/widget/TextView;

    .line 6
    .line 7
    const-string v1, "modelTypeText"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 13
    .line 14
    invoke-direct {p0, v0, v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->updateSelectedTagitem(Landroid/widget/TextView;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->f:Landroid/widget/TextView;

    .line 22
    .line 23
    const-string v1, "gameTypeText"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 29
    .line 30
    invoke-direct {p0, v0, v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->updateSelectedTagitem(Landroid/widget/TextView;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->n:Landroid/widget/TextView;

    .line 38
    .line 39
    const-string v1, "themeTypeText"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 45
    .line 46
    invoke-direct {p0, v0, v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->updateSelectedTagitem(Landroid/widget/TextView;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->k:Landroid/widget/TextView;

    .line 54
    .line 55
    const-string v1, "playTypeText"

    .line 56
    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 61
    .line 62
    invoke-direct {p0, v0, v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->updateSelectedTagitem(Landroid/widget/TextView;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->d:Landroid/widget/TextView;

    .line 70
    .line 71
    const-string v1, "featureTypeText"

    .line 72
    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 77
    .line 78
    invoke-direct {p0, v0, v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->updateSelectedTagitem(Landroid/widget/TextView;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private final updateSelectedTagitem(Landroid/widget/TextView;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getTitle()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->isSelected()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 p2, 0x8

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method private final updateTitle()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Iterable;

    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v3, 0xa

    .line 15
    .line 16
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    check-cast v4, Ljava/lang/Iterable;

    .line 47
    .line 48
    new-instance v5, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    move-object v7, v6

    .line 68
    check-cast v7, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 69
    .line 70
    invoke-virtual {v7}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->isSelected()Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_0

    .line 75
    .line 76
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_4

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Ljava/util/List;

    .line 104
    .line 105
    check-cast v4, Ljava/lang/Iterable;

    .line 106
    .line 107
    new-instance v5, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-eqz v6, :cond_3

    .line 125
    .line 126
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 131
    .line 132
    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getTitle()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_3
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_7

    .line 149
    .line 150
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_6

    .line 159
    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    const/16 v4, 0x10

    .line 171
    .line 172
    if-ge v3, v4, :cond_5

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    .line 176
    .line 177
    const-string v2, "\u00b7"

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->o:Lcom/join/android/app/mgsim/wufun/databinding/jw0;

    .line 188
    .line 189
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/jw0;->e:Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    add-int/lit8 v2, v2, -0x1

    .line 196
    .line 197
    const/4 v3, 0x0

    .line 198
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->o:Lcom/join/android/app/mgsim/wufun/databinding/jw0;

    .line 215
    .line 216
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/jw0;->e:Landroid/widget/TextView;

    .line 217
    .line 218
    const-string v1, "\u5168\u90e8\u6e38\u620f"

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    :goto_5
    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->binding:Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "binding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->datas:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFeatureType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFindTypeAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->findTypeAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "findTypeAdapter"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getFragments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->fragments:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGameSortType()Lcom/join/kotlin/ui/findgame/data/TagData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGameType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGameTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameTypeList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "gameTypeList"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getLeftTypeAdapter()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->leftTypeAdapter:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "leftTypeAdapter"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getModelType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPageExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParentExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlayType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestArgs()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabType()Lcom/join/kotlin/ui/findgame/data/GameTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getThemeType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 2
    .line 3
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    sparse-switch p1, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :sswitch_0
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->n:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :sswitch_1
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 45
    .line 46
    invoke-direct {p1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->h:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->f:Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 84
    .line 85
    .line 86
    new-instance p1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 87
    .line 88
    invoke-direct {p1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->n:Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 105
    .line 106
    .line 107
    new-instance p1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 108
    .line 109
    invoke-direct {p1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->n:Landroid/widget/TextView;

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 126
    .line 127
    .line 128
    new-instance p1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 129
    .line 130
    invoke-direct {p1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 131
    .line 132
    .line 133
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->k:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 147
    .line 148
    .line 149
    new-instance p1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 150
    .line 151
    invoke-direct {p1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->d:Landroid/widget/TextView;

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_1

    .line 166
    .line 167
    :sswitch_2
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 170
    .line 171
    .line 172
    new-instance p1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 173
    .line 174
    invoke-direct {p1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 175
    .line 176
    .line 177
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->k:Landroid/widget/TextView;

    .line 184
    .line 185
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :sswitch_3
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->updateRequestArgs()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->p:Landroid/widget/LinearLayout;

    .line 198
    .line 199
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->fragments:Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    .line 214
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 219
    .line 220
    const-string v1, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.CategoryDetailItemFragment"

    .line 221
    .line 222
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    move-object v2, v0

    .line 226
    check-cast v2, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    .line 227
    .line 228
    iget-object v3, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 229
    .line 230
    iget-object v4, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 231
    .line 232
    iget-object v5, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 233
    .line 234
    iget-object v6, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 235
    .line 236
    iget-object v7, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 237
    .line 238
    invoke-virtual/range {v2 .. v7}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->updateDatas(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V

    .line 239
    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->updateTitle()V

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :sswitch_4
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 249
    .line 250
    .line 251
    new-instance p1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 252
    .line 253
    invoke-direct {p1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 254
    .line 255
    .line 256
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->h:Landroid/widget/TextView;

    .line 263
    .line 264
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    goto :goto_1

    .line 268
    :sswitch_5
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 269
    .line 270
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 271
    .line 272
    .line 273
    new-instance p1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 274
    .line 275
    invoke-direct {p1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 276
    .line 277
    .line 278
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->f:Landroid/widget/TextView;

    .line 285
    .line 286
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    .line 288
    .line 289
    goto :goto_1

    .line 290
    :sswitch_6
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->setSelected(Z)V

    .line 293
    .line 294
    .line 295
    new-instance p1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 296
    .line 297
    invoke-direct {p1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 298
    .line 299
    .line 300
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 301
    .line 302
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->d:Landroid/widget/TextView;

    .line 307
    .line 308
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    :goto_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getFindTypeAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x7f0a0604 -> :sswitch_6
        0x7f0a0722 -> :sswitch_5
        0x7f0a1070 -> :sswitch_4
        0x7f0a1189 -> :sswitch_3
        0x7f0a125f -> :sswitch_2
        0x7f0a137b -> :sswitch_1
        0x7f0a1741 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/join/android/app/mgsim/wufun/databinding/e8;->inflate(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->setBinding(Lcom/join/android/app/mgsim/wufun/databinding/e8;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->setContext(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/e8;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/e8;->o:Lcom/join/android/app/mgsim/wufun/databinding/jw0;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/jw0;->d:Landroid/view/View;

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->gameTypeList()Lorg/androidannotations/api/sharedpreferences/p;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/String;

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    const/4 v1, 0x0

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/4 v2, 0x0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 75
    :goto_1
    if-eqz v2, :cond_2

    .line 76
    .line 77
    const-string p1, "[{\"id\":1,\"title\":\"\u6a21\u62df\u5668\",\"type\":1,\"sub_game_type\":[{\"id\":31,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/fba_icon.png\",\"title\":\"\u8857\u673a\"},{\"id\":33,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/gba_icon.png\",\"title\":\"GBA\"},{\"id\":34,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/psp_icon.png\",\"title\":\"PSP\"},{\"id\":35,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/fc_icon.png\",\"title\":\"FC\"},{\"id\":43,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/sfc_icon.png\",\"title\":\"SFC\"},{\"id\":53,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/ps_icon.png\",\"title\":\"PS\"},{\"id\":51,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/md_icon.png\",\"title\":\"MD\"},{\"id\":54,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/wsc_icon.png\",\"title\":\"WSC\"},{\"id\":57,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/n64_icon.png\",\"title\":\"N64\"},{\"id\":58,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/on_icon.png\",\"title\":\"ONS\"},{\"id\":32,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/nd_icon.png\",\"title\":\"NDS\"},{\"id\":56,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/gbc_icon.png\",\"title\":\"GBC\"},{\"id\":60,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/dc_icon.png\",\"title\":\"DC\"},{\"id\":102,\"pic\":\"\",\"title\":\"H5\"}]},{\"id\":2,\"title\":\"\u5b89\u5353\",\"type\":2,\"sub_game_type\":[{\"id\":10001,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/onlin_icon.png\",\"title\":\"\u7f51\u6e38\"},{\"id\":10002,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/single_icon.png\",\"title\":\"\u5355\u673a\"},{\"id\":10003,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/single_icon.png\",\"title\":\"mod\"}]},{\"id\":3,\"title\":\"\u5206\u7c7b\",\"type\":3,\"sub_game_type\":[{\"id\":24,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/f3/ae/f3ae58e30ae7e432d7571a5ab08e31a2.png\",\"title\":\"\u52a8\u4f5c\u5192\u9669\"},{\"id\":23,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/2d/31/2d31f269379aee69d2e283478a1b9aa5.png\",\"title\":\"\u4f11\u95f2\u76ca\u667a\"},{\"id\":20,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/e3/62/e36255c965b63e80d901f7ea04ae5aa1.png\",\"title\":\"\u89d2\u8272\u626e\u6f14\"},{\"id\":25,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/f4/44/f4444b37064a2cb88401db74dc5e3f75.png\",\"title\":\"\u5c04\u51fb\u98de\u884c\"},{\"id\":19,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/e1/d1/e1d1edd8076f1d92425cef93feef1cf2.png\",\"title\":\"\u7b56\u7565\u6218\u68cb\"},{\"id\":17,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/3f/c8/3fc873bf10d151215d5b977178c4afe6.png\",\"title\":\"\u6a21\u62df\u6e38\u620f\"},{\"id\":22,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/3c/05/3c054708b2a888461eb338d34412a3f0.png\",\"title\":\"\u4f53\u80b2\u6e38\u620f\"},{\"id\":39,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/8e/de/8ede16897f71fdba1389d625b1c9ccfa.png\",\"title\":\"\u7ade\u901f\u6e38\u620f\"},{\"id\":18,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/fc/9c/fc9c346e32b8f48fe6348b8b72e970ce.png\",\"title\":\"\u683c\u6597\u7ade\u6280\"},{\"id\":38,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/ef/8d/ef8d5060aa6c85a58bff921302bcc73a.png\",\"title\":\"\u7ecf\u8425\u6e38\u620f\"},{\"id\":13,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/c9/49/c949ce67d0ccf31a5dbe6cde1d6c213e.png\",\"title\":\"AVG\u604b\u7231\"},{\"id\":15,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/db/0f/db0f26037fee0b193fa9d77094238d9a.png\",\"title\":\"\u751f\u5b58\u6e38\u620f\"},{\"id\":16,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/88/ff/88ff59f4c24e0d14aed861500a9b85e9.png\",\"title\":\"\u6050\u6016\u6e38\u620f\"},{\"id\":12,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/eb/be/ebbe18e8be70b2ff811e32f5bdd8eee3.png\",\"title\":\"\u5854\u9632\u6e38\u620f\"},{\"id\":41,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/fb/5f/fb5f0f3569e9d40babd7d8c10da7195e.png\",\"title\":\"\u97f3\u4e50\u8282\u594f\"},{\"id\":21,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/a4/4c/a44c5c9440c9433dd8c90065790a72ab.png\",\"title\":\"\u653e\u7f6e\u6302\u673a\"}]},{\"id\":4,\"title\":\"\u9898\u6750\",\"type\":4,\"sub_game_type\":[{\"id\":248,\"pic\":\"\",\"title\":\"\u4e8c\u6b21\u5143\"},{\"id\":249,\"pic\":\"\",\"title\":\"\u62df\u4eba\"},{\"id\":250,\"pic\":\"\",\"title\":\"\u67aa\u6218\"},{\"id\":251,\"pic\":\"\",\"title\":\"\u5c71\u6d77\u7ecf\"},{\"id\":252,\"pic\":\"\",\"title\":\"\u52a8\u6f2bIP\"},{\"id\":253,\"pic\":\"\",\"title\":\"\u5192\u9669\"},{\"id\":254,\"pic\":\"\",\"title\":\"\u5730\u7262\u8ff7\u5bab\"},{\"id\":255,\"pic\":\"\",\"title\":\"\u9b54\u5e7b\"},{\"id\":256,\"pic\":\"\",\"title\":\"\u79d1\u5e7b\"},{\"id\":257,\"pic\":\"\",\"title\":\"\u672b\u65e5\"},{\"id\":258,\"pic\":\"\",\"title\":\"\u706b\u5f71\u5fcd\u8005\"},{\"id\":259,\"pic\":\"\",\"title\":\"\u65e5\u6f2b\"},{\"id\":260,\"pic\":\"\",\"title\":\"\u6d77\u6218\"},{\"id\":261,\"pic\":\"\",\"title\":\"\u6b66\u4fa0\"},{\"id\":262,\"pic\":\"\",\"title\":\"\u7ae5\u8bdd\"},{\"id\":263,\"pic\":\"\",\"title\":\"\u53f2\u83b1\u59c6\"},{\"id\":264,\"pic\":\"\",\"title\":\"\u7f8e\u98df\"},{\"id\":265,\"pic\":\"\",\"title\":\"\u5fcd\u8005\"},{\"id\":266,\"pic\":\"\",\"title\":\"\u706b\u67f4\u4eba\"},{\"id\":267,\"pic\":\"\",\"title\":\"\u67aa\u5a18\"},{\"id\":268,\"pic\":\"\",\"title\":\"\u9b54\u7269\u5a18\"},{\"id\":269,\"pic\":\"\",\"title\":\"\u673a\u7532\"},{\"id\":270,\"pic\":\"\",\"title\":\"\u604b\u7231\"},{\"id\":271,\"pic\":\"\",\"title\":\"\u4e09\u56fd\"},{\"id\":272,\"pic\":\"\",\"title\":\"\u6218\u4e89\"},{\"id\":273,\"pic\":\"\",\"title\":\"\u72e9\u730e\"},{\"id\":274,\"pic\":\"\",\"title\":\"\u4fee\u4ed9\"},{\"id\":275,\"pic\":\"\",\"title\":\"\u521d\u97f3\u672a\u6765\"},{\"id\":276,\"pic\":\"\",\"title\":\"\u4eba\u751f\"},{\"id\":277,\"pic\":\"\",\"title\":\"\u5766\u514b\"},{\"id\":278,\"pic\":\"\",\"title\":\"\u4e8c\u6218\"},{\"id\":279,\"pic\":\"\",\"title\":\"\u6218\u8230\"},{\"id\":280,\"pic\":\"\",\"title\":\"\u795e\u8bdd\"},{\"id\":281,\"pic\":\"\",\"title\":\"\u50f5\u5c38\"},{\"id\":282,\"pic\":\"\",\"title\":\"\u690d\u7269\"},{\"id\":283,\"pic\":\"\",\"title\":\"\u6050\u6016\"},{\"id\":284,\"pic\":\"\",\"title\":\"\u52a8\u7269\"},{\"id\":285,\"pic\":\"\",\"title\":\"\u76d7\u5893\"},{\"id\":286,\"pic\":\"\",\"title\":\"\u8230\u5a18\"},{\"id\":287,\"pic\":\"\",\"title\":\"\u72fc\u4eba\u6740\"},{\"id\":288,\"pic\":\"\",\"title\":\"2048\"},{\"id\":289,\"pic\":\"\",\"title\":\"\u4ed9\u4fa0\"},{\"id\":290,\"pic\":\"\",\"title\":\"\u897f\u6e38\"},{\"id\":291,\"pic\":\"\",\"title\":\"\u519c\u573a\"},{\"id\":292,\"pic\":\"\",\"title\":\"\u7535\u7ade\"},{\"id\":293,\"pic\":\"\",\"title\":\"\u8d5b\u8f66\"},{\"id\":294,\"pic\":\"\",\"title\":\"\u5f00\u7f57\"},{\"id\":295,\"pic\":\"\",\"title\":\"\u8db3\u7403\"},{\"id\":296,\"pic\":\"\",\"title\":\"\u7bee\u7403\"},{\"id\":297,\"pic\":\"\",\"title\":\"\u5996\u602a\"},{\"id\":298,\"pic\":\"\",\"title\":\"\u592a\u7a7a\"},{\"id\":299,\"pic\":\"\",\"title\":\"SLG\"},{\"id\":300,\"pic\":\"\",\"title\":\"\u822a\u6d77\"},{\"id\":301,\"pic\":\"\",\"title\":\"\u70f9\u996a\"},{\"id\":302,\"pic\":\"\",\"title\":\"\u6f2b\u5a01\"},{\"id\":303,\"pic\":\"\",\"title\":\"\u8d85\u7ea7\u82f1\u96c4\"},{\"id\":304,\"pic\":\"\",\"title\":\"\u7f8e\u6f2b\"},{\"id\":305,\"pic\":\"\",\"title\":\"\u6697\u9ed1\"},{\"id\":306,\"pic\":\"\",\"title\":\"\u56fd\u521b\"},{\"id\":307,\"pic\":\"\",\"title\":\"\u5076\u50cf\"},{\"id\":308,\"pic\":\"\",\"title\":\"\u624b\u673a\"},{\"id\":309,\"pic\":\"\",\"title\":\"\u514b\u82cf\u9c81\"},{\"id\":310,\"pic\":\"\",\"title\":\"\u4fa6\u63a2\"},{\"id\":311,\"pic\":\"\",\"title\":\"\u9ad8\u8fbe\"},{\"id\":312,\"pic\":\"\",\"title\":\"\u4e50\u9ad8\"},{\"id\":313,\"pic\":\"\",\"title\":\"\u6570\u72ec\"},{\"id\":314,\"pic\":\"\",\"title\":\"\u94a2\u7434\"},{\"id\":315,\"pic\":\"\",\"title\":\"\u6570\u5b66\"},{\"id\":316,\"pic\":\"\",\"title\":\"\u8131\u51fa\"},{\"id\":317,\"pic\":\"\",\"title\":\"\u5927\u5bcc\u7fc1\"},{\"id\":318,\"pic\":\"\",\"title\":\"\u53e3\u888b\u5996\u602a\"},{\"id\":319,\"pic\":\"\",\"title\":\"\u62f3\u7687\"},{\"id\":320,\"pic\":\"\",\"title\":\"\u5965\u7279\u66fc\"},{\"id\":321,\"pic\":\"\",\"title\":\"\u6b7b\u795e\"},{\"id\":322,\"pic\":\"\",\"title\":\"\u4fa0\u76d7\u730e\u8f66\u624b\"},{\"id\":323,\"pic\":\"\",\"title\":\"\u6b7b\u795evs\u706b\u5f71\"},{\"id\":324,\"pic\":\"\",\"title\":\"\u4e09\u56fd\u6218\u7eaa\"},{\"id\":325,\"pic\":\"\",\"title\":\"\u8718\u86db\u4fa0\"},{\"id\":326,\"pic\":\"\",\"title\":\"\u6e38\u620f\u738b\"},{\"id\":327,\"pic\":\"\",\"title\":\"\u523a\u5ba2\u4fe1\u6761\"},{\"id\":328,\"pic\":\"\",\"title\":\"\u5766\u514b\u5927\u6218\"},{\"id\":329,\"pic\":\"\",\"title\":\"\u201c\u70ed\u8840\u201d\u7cfb\u5217\u6e38\u620f\"},{\"id\":330,\"pic\":\"\",\"title\":\"\u6355\u9c7c\"},{\"id\":331,\"pic\":\"\",\"title\":\"\u68a6\u5e7b\u6a21\u62df\u6218\"},{\"id\":332,\"pic\":\"\",\"title\":\"\u4e09\u56fd\u65e0\u53cc\"},{\"id\":333,\"pic\":\"\",\"title\":\"\u690d\u7269\u5927\u6218\u50f5\u5c38\"},{\"id\":334,\"pic\":\"\",\"title\":\"\u9f99\u73e0\"},{\"id\":335,\"pic\":\"\",\"title\":\"\u9965\u8352\"},{\"id\":336,\"pic\":\"\",\"title\":\"\u6a21\u62df\u5c71\u7f8a\"},{\"id\":337,\"pic\":\"\",\"title\":\"\u82f1\u96c4\u8054\u76df\"},{\"id\":338,\"pic\":\"\",\"title\":\"\u4ed9\u5251\u5947\u4fa0\u4f20\"},{\"id\":339,\"pic\":\"\",\"title\":\"\u4f20\u5947\"},{\"id\":340,\"pic\":\"\",\"title\":\"\u6c34\u6d52\u4f20\"},{\"id\":341,\"pic\":\"\",\"title\":\"\u5947\u8ff9MU\"},{\"id\":342,\"pic\":\"\",\"title\":\"\u5b9e\u51b5\u8db3\u7403\"},{\"id\":343,\"pic\":\"\",\"title\":\"\u6700\u7ec8\u5e7b\u60f3\"},{\"id\":344,\"pic\":\"\",\"title\":\"\u6570\u7801\u5b9d\u8d1d\"},{\"id\":345,\"pic\":\"\",\"title\":\"\u6050\u9f99\"},{\"id\":346,\"pic\":\"\",\"title\":\"\u6218\u56fd\"},{\"id\":347,\"pic\":\"\",\"title\":\"\u6821\u56ed\"}]},{\"id\":5,\"title\":\"\u73a9\u6cd5\",\"type\":5,\"sub_game_type\":[{\"id\":385,\"pic\":\"\",\"title\":\"MOBA\"},{\"id\":386,\"pic\":\"\",\"title\":\"\u81ea\u8d70\u68cb\"},{\"id\":387,\"pic\":\"\",\"title\":\"\u5854\u9632\"},{\"id\":388,\"pic\":\"\",\"title\":\"\u517b\u6210\"},{\"id\":389,\"pic\":\"\",\"title\":\"\u7b56\u7565\"},{\"id\":390,\"pic\":\"\",\"title\":\"\u5c04\u51fb\"},{\"id\":391,\"pic\":\"\",\"title\":\"\u5361\u724c\"},{\"id\":392,\"pic\":\"\",\"title\":\"\u56de\u5408\u5236RPG\"},{\"id\":393,\"pic\":\"\",\"title\":\"\u52a8\u4f5c\"},{\"id\":394,\"pic\":\"\",\"title\":\"\u6302\u673a\u653e\u7f6e\"},{\"id\":395,\"pic\":\"\",\"title\":\"\u52a8\u4f5cRPG\"},{\"id\":396,\"pic\":\"\",\"title\":\"\u683c\u6597\"},{\"id\":397,\"pic\":\"\",\"title\":\"\u5403\u9e21\"},{\"id\":398,\"pic\":\"\",\"title\":\"\u7b56\u7565RPG\"},{\"id\":399,\"pic\":\"\",\"title\":\"MMORPG\"},{\"id\":400,\"pic\":\"\",\"title\":\"\u5efa\u9020\"},{\"id\":401,\"pic\":\"\",\"title\":\"\u6a21\u62df\"},{\"id\":402,\"pic\":\"\",\"title\":\"\u6d88\u9664\"},{\"id\":403,\"pic\":\"\",\"title\":\"\u6218\u68cb\"},{\"id\":404,\"pic\":\"\",\"title\":\"\u7ade\u901f\"},{\"id\":405,\"pic\":\"\",\"title\":\"\u8dd1\u9177\"},{\"id\":406,\"pic\":\"\",\"title\":\"\u7ecf\u8425\"},{\"id\":407,\"pic\":\"\",\"title\":\"\u5373\u65f6\u6218\u7565\"},{\"id\":408,\"pic\":\"\",\"title\":\"\u6587\u5b57\u5192\u9669\"},{\"id\":409,\"pic\":\"\",\"title\":\"\u97f3\u4e50\u8282\u594f\"},{\"id\":410,\"pic\":\"\",\"title\":\"\u68cb\u724c\"},{\"id\":411,\"pic\":\"\",\"title\":\"\u684c\u6e38\"},{\"id\":412,\"pic\":\"\",\"title\":\"io\"},{\"id\":413,\"pic\":\"\",\"title\":\"\u6362\u88c5\"},{\"id\":414,\"pic\":\"\",\"title\":\"\u95ef\u5173\"},{\"id\":415,\"pic\":\"\",\"title\":\"\u4e92\u52a8\u5c0f\u8bf4\"},{\"id\":416,\"pic\":\"\",\"title\":\"\u89e3\u8c1c\"},{\"id\":417,\"pic\":\"\",\"title\":\"\u70b9\u51fb\"},{\"id\":418,\"pic\":\"\",\"title\":\"\u76ca\u667a\"},{\"id\":419,\"pic\":\"\",\"title\":\"\u5f39\u5c04\"},{\"id\":420,\"pic\":\"\",\"title\":\"\u4f53\u80b2\"},{\"id\":421,\"pic\":\"\",\"title\":\"\u4e92\u52a8\u7535\u5f71\"},{\"id\":422,\"pic\":\"\",\"title\":\"\u968f\u884c\u6e38\u620f\"},{\"id\":423,\"pic\":\"\",\"title\":\"\u89c6\u89c9\u5c0f\u8bf4\"},{\"id\":424,\"pic\":\"\",\"title\":\"MUD\"},{\"id\":425,\"pic\":\"\",\"title\":\"\u98de\u884c\"},{\"id\":426,\"pic\":\"\",\"title\":\"\u9a7e\u9a76\"},{\"id\":427,\"pic\":\"\",\"title\":\"\u751f\u5b58\"}]},{\"id\":6,\"title\":\"\u7279\u8272\",\"type\":6,\"sub_game_type\":[{\"id\":428,\"pic\":\"\",\"title\":\"\u8054\u673a\"},{\"id\":429,\"pic\":\"\",\"title\":\"5v5\"},{\"id\":430,\"pic\":\"\",\"title\":\"\u591a\u4eba\"},{\"id\":431,\"pic\":\"\",\"title\":\"\u63a8\u5854\"},{\"id\":432,\"pic\":\"\",\"title\":\"\u7f8e\u5973\"},{\"id\":433,\"pic\":\"\",\"title\":\"\u786c\u6838\"},{\"id\":434,\"pic\":\"\",\"title\":\"\u6536\u96c6\u8981\u7d20\"},{\"id\":435,\"pic\":\"\",\"title\":\"\u56fd\u4ea7\"},{\"id\":436,\"pic\":\"\",\"title\":\"FPS\"},{\"id\":437,\"pic\":\"\",\"title\":\"PVP\"},{\"id\":438,\"pic\":\"\",\"title\":\"\u7ade\u6280\"},{\"id\":439,\"pic\":\"\",\"title\":\"TPS\"},{\"id\":440,\"pic\":\"\",\"title\":\"3D\"},{\"id\":441,\"pic\":\"\",\"title\":\"\u5408\u4f5c\"},{\"id\":442,\"pic\":\"\",\"title\":\"TPP\"},{\"id\":443,\"pic\":\"\",\"title\":\"\u5267\u60c5\"},{\"id\":444,\"pic\":\"\",\"title\":\"\u5bf9\u6218\"},{\"id\":445,\"pic\":\"\",\"title\":\"Roguelike\"},{\"id\":446,\"pic\":\"\",\"title\":\"Steam\u79fb\u690d\"},{\"id\":447,\"pic\":\"\",\"title\":\"\u72ec\u7acb\u6e38\u620f\"},{\"id\":450,\"pic\":\"\",\"title\":\"\u4f11\u95f2\"},{\"id\":451,\"pic\":\"\",\"title\":\"\u9ad8\u753b\u8d28\"},{\"id\":452,\"pic\":\"\",\"title\":\"\u9ad8\u96be\u5ea6\"},{\"id\":453,\"pic\":\"\",\"title\":\"\u6a2a\u7248\"},{\"id\":454,\"pic\":\"\",\"title\":\"\u548c\u98ce\"},{\"id\":455,\"pic\":\"\",\"title\":\"Live2D\"},{\"id\":456,\"pic\":\"\",\"title\":\"\u5361\u901a\"},{\"id\":457,\"pic\":\"\",\"title\":\"\u7ec4\u961f\"},{\"id\":458,\"pic\":\"\",\"title\":\"CCG\"},{\"id\":459,\"pic\":\"\",\"title\":\"1v1\"},{\"id\":460,\"pic\":\"\",\"title\":\"\u53ef\u7231\"},{\"id\":461,\"pic\":\"\",\"title\":\"\u5c40\u57df\u7f51\u8054\u673a\"},{\"id\":462,\"pic\":\"\",\"title\":\"\u50cf\u7d20\"},{\"id\":463,\"pic\":\"\",\"title\":\"\u5f39\u5e55\"},{\"id\":464,\"pic\":\"\",\"title\":\"\u4e2d\u56fd\u98ce\"},{\"id\":465,\"pic\":\"\",\"title\":\"\u9ad8\u81ea\u7531\u5ea6\"},{\"id\":466,\"pic\":\"\",\"title\":\"\u53e4\u98ce\"},{\"id\":467,\"pic\":\"\",\"title\":\"\u53ef\u634f\u8138\"},{\"id\":468,\"pic\":\"\",\"title\":\"\u5f00\u653e\u4e16\u754c\"},{\"id\":469,\"pic\":\"\",\"title\":\"\u793e\u4ea4\"},{\"id\":470,\"pic\":\"\",\"title\":\"DIY\"},{\"id\":471,\"pic\":\"\",\"title\":\"\u7ecf\u5178\"},{\"id\":472,\"pic\":\"\",\"title\":\"\u591a\u7ed3\u5c40\"},{\"id\":473,\"pic\":\"\",\"title\":\"\u624b\u7ed8\u98ce\u683c\"},{\"id\":474,\"pic\":\"\",\"title\":\"\u88c5\u4fee\"},{\"id\":475,\"pic\":\"\",\"title\":\"\u8bbe\u8ba1\"},{\"id\":476,\"pic\":\"\",\"title\":\"\u5973\u6027\u5411\"},{\"id\":477,\"pic\":\"\",\"title\":\"\u58f0\u63a7\"},{\"id\":478,\"pic\":\"\",\"title\":\"\u6f02\u79fb\"},{\"id\":479,\"pic\":\"\",\"title\":\"\u6c34\u58a8\u98ce\"},{\"id\":480,\"pic\":\"\",\"title\":\"2D\"},{\"id\":481,\"pic\":\"\",\"title\":\"\u6253\u51fb\u611f\"},{\"id\":482,\"pic\":\"\",\"title\":\"\u624b\u901f\"},{\"id\":483,\"pic\":\"\",\"title\":\"\u58f0\u4f18\u914d\u97f3\"},{\"id\":484,\"pic\":\"\",\"title\":\"\u81f4\u90c1\"},{\"id\":485,\"pic\":\"\",\"title\":\"DBG\"},{\"id\":486,\"pic\":\"\",\"title\":\"\u9003\u751f\"},{\"id\":487,\"pic\":\"\",\"title\":\"\u79fb\u690d\"},{\"id\":488,\"pic\":\"\",\"title\":\"\u641e\u7b11\"},{\"id\":489,\"pic\":\"\",\"title\":\"\u5408\u6210\"},{\"id\":490,\"pic\":\"\",\"title\":\"\u52a8\u4eba\u97f3\u4e50\"},{\"id\":491,\"pic\":\"\",\"title\":\"\u7535\u97f3\"},{\"id\":492,\"pic\":\"\",\"title\":\"\u7ad6\u7248\"},{\"id\":493,\"pic\":\"\",\"title\":\"\u7ae5\u5e74\"},{\"id\":494,\"pic\":\"\",\"title\":\"Q\u7248\"},{\"id\":495,\"pic\":\"\",\"title\":\"\u6709\u6bd2\"},{\"id\":496,\"pic\":\"\",\"title\":\"\u4e59\u5973\"},{\"id\":497,\"pic\":\"\",\"title\":\"TCG\"},{\"id\":498,\"pic\":\"\",\"title\":\"\u60ac\u7591\"},{\"id\":499,\"pic\":\"\",\"title\":\"\u6cbb\u6108\"},{\"id\":500,\"pic\":\"\",\"title\":\"\u7ec4\u88c5\"},{\"id\":501,\"pic\":\"\",\"title\":\"\u63a8\u7406\"},{\"id\":502,\"pic\":\"\",\"title\":\"\u89e3\u538b\"},{\"id\":503,\"pic\":\"\",\"title\":\"meta\"},{\"id\":504,\"pic\":\"\",\"title\":\"\u6c49\u5316\"},{\"id\":505,\"pic\":\"\",\"title\":\"\u6b27\u7f8e\u753b\u98ce\"},{\"id\":506,\"pic\":\"\",\"title\":\"3v3\"},{\"id\":507,\"pic\":\"\",\"title\":\"\u9b54\u6027\"},{\"id\":508,\"pic\":\"\",\"title\":\"\u5e73\u53f0\u8df3\u8dc3\"},{\"id\":509,\"pic\":\"\",\"title\":\"\u81ea\u5236\u5173\u5361\"},{\"id\":510,\"pic\":\"\",\"title\":\"\u8f7b\u6539\"},{\"id\":511,\"pic\":\"\",\"title\":\"\u7b80\u7ea6\u753b\u98ce\"},{\"id\":512,\"pic\":\"\",\"title\":\"\u8857\u673a\u98ce\u683c\"},{\"id\":513,\"pic\":\"\",\"title\":\"AR\"},{\"id\":514,\"pic\":\"\",\"title\":\"\u6237\u5916\"},{\"id\":515,\"pic\":\"\",\"title\":\"\u65e5\u7cfb\u98ce\u683c\"},{\"id\":516,\"pic\":\"\",\"title\":\"VR\"},{\"id\":517,\"pic\":\"\",\"title\":\"\u4f5b\u7cfb\"},{\"id\":518,\"pic\":\"\",\"title\":\"\u4f4e\u6a21\"},{\"id\":519,\"pic\":\"\",\"title\":\"\u5c0f\u6e05\u65b0\"},{\"id\":520,\"pic\":\"\",\"title\":\"\u4fef\u89c6\u89c6\u89d2\"},{\"id\":521,\"pic\":\"\",\"title\":\"PC\u79fb\u690d\"},{\"id\":522,\"pic\":\"\",\"title\":\"\u4e70\u65ad\u5236\"},{\"id\":523,\"pic\":\"\",\"title\":\"\u8fdb\u5316\"},{\"id\":524,\"pic\":\"\",\"title\":\"\u526a\u7eb8\u98ce\"},{\"id\":525,\"pic\":\"\",\"title\":\"\u526a\u5f71\u98ce\"},{\"id\":526,\"pic\":\"\",\"title\":\"\u50ac\u6cea\"},{\"id\":527,\"pic\":\"\",\"title\":\"\u4e0b\u843d\u5f0f\"},{\"id\":528,\"pic\":\"\",\"title\":\"\u624b\u6b8b\"},{\"id\":529,\"pic\":\"\",\"title\":\"\u53cd\u5e94\u529b\"}]}]"

    .line 78
    .line 79
    :cond_2
    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 80
    .line 81
    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    new-array v4, v0, [Ljava/lang/Class;

    .line 89
    .line 90
    const-class v5, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 91
    .line 92
    aput-object v5, v4, v1

    .line 93
    .line 94
    const-class v5, Ljava/util/List;

    .line 95
    .line 96
    invoke-virtual {v3, v5, v4}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2, p1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Ljava/util/List;

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->setGameTypeList(Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Ljava/lang/Iterable;

    .line 114
    .line 115
    new-instance v2, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_5

    .line 129
    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    move-object v4, v3

    .line 135
    check-cast v4, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 136
    .line 137
    invoke-virtual {v4}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-nez v4, :cond_4

    .line 142
    .line 143
    const/4 v4, 0x1

    .line 144
    goto :goto_3

    .line 145
    :cond_4
    const/4 v4, 0x0

    .line 146
    :goto_3
    if-eqz v4, :cond_3

    .line 147
    .line 148
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    xor-int/2addr p1, v0

    .line 157
    if-eqz p1, :cond_6

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Ljava/lang/Iterable;

    .line 175
    .line 176
    new-instance v2, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_9

    .line 190
    .line 191
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    move-object v4, v3

    .line 196
    check-cast v4, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 197
    .line 198
    invoke-virtual {v4}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    const/4 v5, 0x2

    .line 203
    if-ne v4, v5, :cond_8

    .line 204
    .line 205
    const/4 v4, 0x1

    .line 206
    goto :goto_5

    .line 207
    :cond_8
    const/4 v4, 0x0

    .line 208
    :goto_5
    if-eqz v4, :cond_7

    .line 209
    .line 210
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_9
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    xor-int/2addr p1, v0

    .line 219
    if-eqz p1, :cond_d

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    check-cast p1, Ljava/lang/Iterable;

    .line 246
    .line 247
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Ljava/lang/Iterable;

    .line 252
    .line 253
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_d

    .line 262
    .line 263
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getGameTypeList()Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    check-cast v3, Ljava/lang/Iterable;

    .line 274
    .line 275
    new-instance v4, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    :cond_a
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-eqz v5, :cond_c

    .line 289
    .line 290
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    move-object v6, v5

    .line 295
    check-cast v6, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 296
    .line 297
    invoke-virtual {v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    if-ne v6, v0, :cond_b

    .line 302
    .line 303
    const/4 v6, 0x1

    .line 304
    goto :goto_8

    .line 305
    :cond_b
    const/4 v6, 0x0

    .line 306
    :goto_8
    if-eqz v6, :cond_a

    .line 307
    .line 308
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    goto :goto_7

    .line 312
    :cond_c
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    check-cast v3, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 321
    .line 322
    invoke-virtual {v3}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_d
    invoke-virtual {p0, p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->setContext(Landroid/content/Context;)V

    .line 334
    .line 335
    .line 336
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->initView()V

    .line 337
    .line 338
    .line 339
    return-void
.end method

.method public final reLoadDatas()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->l:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->onClick(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/e8;->j:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->onClick(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/e8;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/e8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->binding:Lcom/join/android/app/mgsim/wufun/databinding/e8;

    .line 7
    .line 8
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public final setDatas(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->datas:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setFeatureType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 7
    .line 8
    return-void
.end method

.method public final setFindTypeAdapter(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->findTypeAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    .line 7
    .line 8
    return-void
.end method

.method public final setFragments(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->fragments:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public final setGameSortType(Lcom/join/kotlin/ui/findgame/data/TagData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/TagData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 7
    .line 8
    return-void
.end method

.method public final setGameType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 7
    .line 8
    return-void
.end method

.method public final setGameTypeList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->gameTypeList:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setLeftTypeAdapter(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->leftTypeAdapter:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    .line 7
    .line 8
    return-void
.end method

.method public final setModelType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 7
    .line 8
    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->page:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPageExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 7
    .line 8
    return-void
.end method

.method public final setParentExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 7
    .line 8
    return-void
.end method

.method public final setRequestArgs(Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/CategoryRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 7
    .line 8
    return-void
.end method

.method public final setTabType(Lcom/join/kotlin/ui/findgame/data/GameTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->tabType:Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 7
    .line 8
    return-void
.end method

.method public final setThemeType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 7
    .line 8
    return-void
.end method
