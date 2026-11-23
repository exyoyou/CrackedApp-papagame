.class public interface abstract Lcom/join/kotlin/discount/proxy/GameDetailGiftClickProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/join/kotlin/discount/proxy/GameDetailGiftClickProxy;",
        "",
        "onBackClick",
        "",
        "goGiftDetail",
        "giftItemBean",
        "Lcom/join/kotlin/discount/model/bean/GiftItemBean;",
        "receiveGift",
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
.method public abstract goGiftDetail(Lcom/join/kotlin/discount/model/bean/GiftItemBean;)V
    .param p1    # Lcom/join/kotlin/discount/model/bean/GiftItemBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onBackClick()V
.end method

.method public abstract receiveGift(Lcom/join/kotlin/discount/model/bean/GiftItemBean;)V
    .param p1    # Lcom/join/kotlin/discount/model/bean/GiftItemBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
