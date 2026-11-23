.class public interface abstract Lcom/join/kotlin/presenter/view/FindHomeView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/psk/kotlin/base/presenter/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/presenter/view/FindHomeView$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/join/kotlin/presenter/view/FindHomeView;",
        "Lcom/psk/kotlin/base/presenter/view/BaseView;",
        "onLoadDataSuccess",
        "",
        "page",
        "",
        "result",
        "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;",
        "onLoadDataSuccessV9",
        "Lcom/join/kotlin/ui/findgame/data/FindClassifyResultData;",
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


# virtual methods
.method public abstract onLoadDataSuccess(ILcom/join/kotlin/ui/findgame/data/FindChoiceResultData;)V
    .param p2    # Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onLoadDataSuccessV9(ILcom/join/kotlin/ui/findgame/data/FindClassifyResultData;)V
    .param p2    # Lcom/join/kotlin/ui/findgame/data/FindClassifyResultData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
