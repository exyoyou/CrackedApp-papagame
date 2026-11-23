.class public final Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;
.super Lcom/chad/library/adapter/base/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/c<",
        "Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudAssetRecordAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudAssetRecordAdapter.kt\ncom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,174:1\n55#2:175\n55#2:176\n55#2:177\n55#2:178\n55#2:179\n*S KotlinDebug\n*F\n+ 1 CloudAssetRecordAdapter.kt\ncom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter\n*L\n30#1:175\n54#1:176\n78#1:177\n102#1:178\n127#1:179\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00052\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;",
        "Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;",
        "<init>",
        "()V",
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
        "SMAP\nCloudAssetRecordAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudAssetRecordAdapter.kt\ncom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,174:1\n55#2:175\n55#2:176\n55#2:177\n55#2:178\n55#2:179\n*S KotlinDebug\n*F\n+ 1 CloudAssetRecordAdapter.kt\ncom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter\n*L\n30#1:175\n54#1:176\n78#1:177\n102#1:178\n127#1:179\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_DAOJ:I = 0x5

.field public static final TYPE_TIME:I = 0x2

.field public static final TYPE_TIME_HEAD:I = 0x1

.field public static final TYPE_YUNB:I = 0x4

.field public static final TYPE_YUNZ:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;->Companion:Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/c;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$1;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$1;-><init>()V

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
    move-result-object v0

    .line 17
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$2;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$2;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-virtual {v0, v3, v2, v1}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$3;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$3;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    invoke-virtual {v0, v3, v2, v1}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$4;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$4;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    invoke-virtual {v0, v3, v2, v1}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$5;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$5;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x5

    .line 53
    invoke-virtual {v0, v3, v2, v1}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$6;

    .line 58
    .line 59
    invoke-direct {v1}, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$6;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/c;->onItemViewType(Lcom/chad/library/adapter/base/c$a;)Lcom/chad/library/adapter/base/c;

    .line 63
    .line 64
    .line 65
    return-void
.end method
