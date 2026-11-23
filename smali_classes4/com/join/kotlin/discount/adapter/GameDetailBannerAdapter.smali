.class public final Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;
.super Lcom/chad/library/adapter/base/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/c<",
        "Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameDetailBannerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailBannerAdapter.kt\ncom/join/kotlin/discount/adapter/GameDetailBannerAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,214:1\n55#2:215\n55#2:216\n55#2:217\n55#2:218\n55#2:219\n*S KotlinDebug\n*F\n+ 1 GameDetailBannerAdapter.kt\ncom/join/kotlin/discount/adapter/GameDetailBannerAdapter\n*L\n29#1:215\n73#1:216\n105#1:217\n146#1:218\n178#1:219\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;",
        "Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;",
        "<init>",
        "()V",
        "click",
        "Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;",
        "getClick",
        "()Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;",
        "setClick",
        "(Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;)V",
        "Companion",
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
        "SMAP\nGameDetailBannerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailBannerAdapter.kt\ncom/join/kotlin/discount/adapter/GameDetailBannerAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,214:1\n55#2:215\n55#2:216\n55#2:217\n55#2:218\n55#2:219\n*S KotlinDebug\n*F\n+ 1 GameDetailBannerAdapter.kt\ncom/join/kotlin/discount/adapter/GameDetailBannerAdapter\n*L\n29#1:215\n73#1:216\n105#1:217\n146#1:218\n178#1:219\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_PIC_H:I = 0x2

.field public static final TYPE_PIC_V:I = 0x3

.field public static final TYPE_PIC_V_SINGLE:I = 0x4

.field public static final TYPE_PLACEHOLDER:I = 0x5

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private click:Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;->Companion:Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/c;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$1;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$1;-><init>()V

    .line 9
    .line 10
    .line 11
    const-class v2, Lv2/a;

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2, v0}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$2;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$2;-><init>(Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-virtual {p0, v1, v2, v0}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$3;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$3;-><init>(Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-virtual {p0, v1, v2, v0}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$4;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$4;-><init>(Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x4

    .line 40
    invoke-virtual {p0, v1, v2, v0}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$5;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$5;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x5

    .line 49
    invoke-virtual {p0, v1, v2, v0}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$6;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter$6;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/c;->onItemViewType(Lcom/chad/library/adapter/base/c$a;)Lcom/chad/library/adapter/base/c;

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final getClick()Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;->click:Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setClick(Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;->click:Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;

    .line 2
    .line 3
    return-void
.end method
