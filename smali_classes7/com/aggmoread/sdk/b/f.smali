.class public Lcom/aggmoread/sdk/b/f;
.super Lcom/aggmoread/sdk/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/banner/AMBannerAd;


# instance fields
.field private b:Lcom/aggmoread/sdk/z/c/a/a/c/n/a;

.field private c:Lcom/aggmoread/sdk/z/c/a/a/c/n/c;

.field private d:Lcom/aggmoread/sdk/client/banner/AMBannerAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/c/n/a;Lcom/aggmoread/sdk/b/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/b/c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/c/a;Lcom/aggmoread/sdk/b/d;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/c/n/a;

    new-instance p1, Lcom/aggmoread/sdk/b/f$a;

    invoke-direct {p1, p0}, Lcom/aggmoread/sdk/b/f$a;-><init>(Lcom/aggmoread/sdk/b/f;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/c/n/c;

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/b/f;)Lcom/aggmoread/sdk/client/banner/AMBannerAdInteractionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/b/f;->d:Lcom/aggmoread/sdk/client/banner/AMBannerAdInteractionListener;

    return-object p0
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/c/n/a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/a;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/c/n/a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/n/a;->destroy()V

    return-void
.end method

.method public show(Lcom/aggmoread/sdk/client/banner/AMBannerAdInteractionListener;)V
    .locals 1

    iput-object p1, p0, Lcom/aggmoread/sdk/b/f;->d:Lcom/aggmoread/sdk/client/banner/AMBannerAdInteractionListener;

    iget-object p1, p0, Lcom/aggmoread/sdk/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/c/n/a;

    iget-object v0, p0, Lcom/aggmoread/sdk/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/c/n/c;

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/c/n/a;->a(Lcom/aggmoread/sdk/z/c/a/a/c/n/c;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/c/n/a;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/n/a;->b()V

    return-void
.end method

.method public showInContainer(Landroid/view/ViewGroup;Lcom/aggmoread/sdk/client/banner/AMBannerAdInteractionListener;)V
    .locals 1

    iput-object p2, p0, Lcom/aggmoread/sdk/b/f;->d:Lcom/aggmoread/sdk/client/banner/AMBannerAdInteractionListener;

    iget-object p2, p0, Lcom/aggmoread/sdk/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/c/n/a;

    iget-object v0, p0, Lcom/aggmoread/sdk/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/c/n/c;

    invoke-interface {p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/c/n/a;->a(Lcom/aggmoread/sdk/z/c/a/a/c/n/c;)V

    iget-object p2, p0, Lcom/aggmoread/sdk/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/c/n/a;

    invoke-interface {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/c/n/a;->a(Landroid/view/ViewGroup;)V

    return-void
.end method
