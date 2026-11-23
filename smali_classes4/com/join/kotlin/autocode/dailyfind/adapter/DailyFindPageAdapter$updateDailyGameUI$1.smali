.class public final Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$updateDailyGameUI$1;
.super Lm6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->updateDailyGameUI(Lv2/c;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$updateDailyGameUI$1",
        "Lcom/join/mgps/callbacks/impl/DownloadNormalCallbackImpl;",
        "onViewUpdate",
        "",
        "downView",
        "Lcom/join/mgps/customview/DownloadNormalView;",
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


# direct methods
.method constructor <init>(Lcom/join/mgps/dto/GamedetialModleFourBean;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onViewUpdate(Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lm6/c;->onViewUpdate(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->setTextColor(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/customview/DownloadNormalView;->setBoldStyle()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method
