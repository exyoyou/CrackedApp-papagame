.class public final Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;
.super Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "themeResId",
        "",
        "(Landroid/content/Context;I)V",
        "img",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "getImg",
        "()Lcom/facebook/drawee/view/SimpleDraweeView;",
        "setImg",
        "(Lcom/facebook/drawee/view/SimpleDraweeView;)V",
        "layoutId",
        "getLayoutId",
        "()I",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setData",
        "item",
        "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
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
.field public img:Lcom/facebook/drawee/view/SimpleDraweeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;->onCreate$lambda$0(Landroid/view/View;)V

    return-void
.end method

.method private static final onCreate$lambda$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getImg()Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "img"

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

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d05cc

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0a08cf

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;->setImg(Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;->getImg()Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog$onCreate$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog$onCreate$1;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;->getImg()Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 34
    .line 35
    .line 36
    const p1, 0x7f0a065b

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "findViewById(...)"

    .line 44
    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/h;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/join/kotlin/module/hmcloud/dialog/h;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public setData(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/hmcloud/HMKeyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->setData(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getGuide()Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;->getImg()Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;->getImg()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final setImg(Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/view/SimpleDraweeView;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    .line 8
    return-void
.end method
