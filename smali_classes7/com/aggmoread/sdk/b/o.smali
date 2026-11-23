.class public Lcom/aggmoread/sdk/b/o;
.super Lcom/aggmoread/sdk/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/splash/AMSplashAd;


# instance fields
.field private b:Lcom/aggmoread/sdk/z/c/a/a/c/t/a;

.field private c:Lcom/aggmoread/sdk/z/c/a/a/c/t/c;

.field private d:Lcom/aggmoread/sdk/client/splash/AMSplashInteractionListener;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/b/d;Lcom/aggmoread/sdk/z/c/a/a/c/t/a;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/aggmoread/sdk/b/c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/c/a;Lcom/aggmoread/sdk/b/d;)V

    iput-object p2, p0, Lcom/aggmoread/sdk/b/o;->b:Lcom/aggmoread/sdk/z/c/a/a/c/t/a;

    new-instance p1, Lcom/aggmoread/sdk/b/o$a;

    invoke-direct {p1, p0}, Lcom/aggmoread/sdk/b/o$a;-><init>(Lcom/aggmoread/sdk/b/o;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/b/o;->c:Lcom/aggmoread/sdk/z/c/a/a/c/t/c;

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/b/o;)Lcom/aggmoread/sdk/client/splash/AMSplashInteractionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/b/o;->d:Lcom/aggmoread/sdk/client/splash/AMSplashInteractionListener;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/aggmoread/sdk/b/o;->b:Lcom/aggmoread/sdk/z/c/a/a/c/t/a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/a;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/b/o;->d:Lcom/aggmoread/sdk/client/splash/AMSplashInteractionListener;

    iput-object v0, p0, Lcom/aggmoread/sdk/b/o;->c:Lcom/aggmoread/sdk/z/c/a/a/c/t/c;

    iget-object v0, p0, Lcom/aggmoread/sdk/b/o;->b:Lcom/aggmoread/sdk/z/c/a/a/c/t/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/t/a;->destroy()V

    :cond_0
    return-void
.end method

.method public show(Lcom/aggmoread/sdk/client/splash/AMSplashInteractionListener;)V
    .locals 1

    iput-object p1, p0, Lcom/aggmoread/sdk/b/o;->d:Lcom/aggmoread/sdk/client/splash/AMSplashInteractionListener;

    iget-object p1, p0, Lcom/aggmoread/sdk/b/o;->b:Lcom/aggmoread/sdk/z/c/a/a/c/t/a;

    iget-object v0, p0, Lcom/aggmoread/sdk/b/o;->c:Lcom/aggmoread/sdk/z/c/a/a/c/t/c;

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/c/t/a;->a(Lcom/aggmoread/sdk/z/c/a/a/c/t/c;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/b/o;->b:Lcom/aggmoread/sdk/z/c/a/a/c/t/a;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/t/a;->b()V

    return-void
.end method

.method public showViewGroup(Landroid/view/ViewGroup;Lcom/aggmoread/sdk/client/splash/AMSplashInteractionListener;)V
    .locals 1

    iput-object p2, p0, Lcom/aggmoread/sdk/b/o;->d:Lcom/aggmoread/sdk/client/splash/AMSplashInteractionListener;

    iget-object p2, p0, Lcom/aggmoread/sdk/b/o;->b:Lcom/aggmoread/sdk/z/c/a/a/c/t/a;

    iget-object v0, p0, Lcom/aggmoread/sdk/b/o;->c:Lcom/aggmoread/sdk/z/c/a/a/c/t/c;

    invoke-interface {p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/c/t/a;->a(Lcom/aggmoread/sdk/z/c/a/a/c/t/c;)V

    iget-object p2, p0, Lcom/aggmoread/sdk/b/o;->b:Lcom/aggmoread/sdk/z/c/a/a/c/t/a;

    invoke-interface {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/c/t/a;->a(Landroid/view/ViewGroup;)V

    return-void
.end method
