.class public interface abstract Lcom/join/kotlin/discount/proxy/CouponListClickProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/join/kotlin/discount/proxy/CouponListClickProxy;",
        "",
        "onDetailClick",
        "",
        "itemBean",
        "Lcom/join/kotlin/discount/model/bean/CouponItemBean;",
        "onUnSupportClick",
        "showUseTip",
        "tip",
        "Lcom/join/kotlin/discount/model/bean/CouponUseTip;",
        "onUseClick",
        "onReceiveClick",
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
.method public abstract onDetailClick(Lcom/join/kotlin/discount/model/bean/CouponItemBean;)V
    .param p1    # Lcom/join/kotlin/discount/model/bean/CouponItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onReceiveClick(Lcom/join/kotlin/discount/model/bean/CouponItemBean;)V
    .param p1    # Lcom/join/kotlin/discount/model/bean/CouponItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onUnSupportClick(Lcom/join/kotlin/discount/model/bean/CouponItemBean;)V
    .param p1    # Lcom/join/kotlin/discount/model/bean/CouponItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onUseClick(Lcom/join/kotlin/discount/model/bean/CouponItemBean;)V
    .param p1    # Lcom/join/kotlin/discount/model/bean/CouponItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showUseTip(Lcom/join/kotlin/discount/model/bean/CouponUseTip;)V
    .param p1    # Lcom/join/kotlin/discount/model/bean/CouponUseTip;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
