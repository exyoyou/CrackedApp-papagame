.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a$d;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a$d;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a$d;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a;)Lcom/kwad/sdk/api/KsInterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a$d;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a$d;->c:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a;

    invoke-static {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a;->h(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/h/a;)Lcom/kwad/sdk/api/KsVideoPlayConfig;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/api/KsInterstitialAd;->showInterstitialAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    return-void
.end method
