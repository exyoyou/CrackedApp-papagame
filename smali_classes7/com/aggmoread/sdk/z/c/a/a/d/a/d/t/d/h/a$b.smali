.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;->a(Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSplashAdClick(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
    .locals 2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;->c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;)V

    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$b$a;

    invoke-direct {p1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$b$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$b;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onSplashAdClose(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;I)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;->d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;)V

    return-void
.end method

.method public onSplashAdShow(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/h/a;)V

    return-void
.end method
