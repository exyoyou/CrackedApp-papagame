.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;

    invoke-virtual {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;->B()V

    return-void
.end method

.method public onFullScreenVideoCached()V
    .locals 0

    .line 1
    return-void
.end method

.method public onFullScreenVideoCached(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/f/b;->C()V

    return-void
.end method
