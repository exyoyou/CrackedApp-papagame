.class public final Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BannerPagerItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\n\"\u0004\u0008\u0016\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;",
        "",
        "isVideo",
        "",
        "data",
        "pic_position",
        "",
        "create",
        "<init>",
        "(ZLjava/lang/Object;IZ)V",
        "()Z",
        "setVideo",
        "(Z)V",
        "getData",
        "()Ljava/lang/Object;",
        "setData",
        "(Ljava/lang/Object;)V",
        "getPic_position",
        "()I",
        "setPic_position",
        "(I)V",
        "getCreate",
        "setCreate",
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


# instance fields
.field private create:Z

.field private data:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isVideo:Z

.field private pic_position:I


# direct methods
.method public constructor <init>(ZLjava/lang/Object;IZ)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->isVideo:Z

    .line 3
    iput-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->data:Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->pic_position:I

    .line 5
    iput-boolean p4, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->create:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;-><init>(ZLjava/lang/Object;IZ)V

    return-void
.end method


# virtual methods
.method public final getCreate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->create:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPic_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->pic_position:I

    .line 2
    .line 3
    return v0
.end method

.method public final isVideo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->isVideo:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setCreate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->create:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setData(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setPic_position(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->pic_position:I

    .line 2
    .line 3
    return-void
.end method

.method public final setVideo(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->isVideo:Z

    .line 2
    .line 3
    return-void
.end method
