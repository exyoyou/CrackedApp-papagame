.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onNativeExpressAdLoad(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->z()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;

    const/16 v0, -0x3e8

    const-string v1, "\u672a\u5339\u914d\u5230\u5408\u9002\u5e7f\u544a\uff01"

    invoke-virtual {p1, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/c/a;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
