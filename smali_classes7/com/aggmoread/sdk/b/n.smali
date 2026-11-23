.class public Lcom/aggmoread/sdk/b/n;
.super Lcom/aggmoread/sdk/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/reward/AMRewardAd;


# instance fields
.field private b:Lcom/aggmoread/sdk/z/c/a/a/c/s/a;

.field private c:Lcom/aggmoread/sdk/z/c/a/a/c/s/d;

.field private d:Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/c/s/a;Lcom/aggmoread/sdk/b/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/b/c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/c/a;Lcom/aggmoread/sdk/b/d;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/b/n;->b:Lcom/aggmoread/sdk/z/c/a/a/c/s/a;

    new-instance p1, Lcom/aggmoread/sdk/b/n$a;

    invoke-direct {p1, p0}, Lcom/aggmoread/sdk/b/n$a;-><init>(Lcom/aggmoread/sdk/b/n;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/b/n;->c:Lcom/aggmoread/sdk/z/c/a/a/c/s/d;

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/b/n;)Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/b/n;->d:Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

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
    iget-object v0, p0, Lcom/aggmoread/sdk/b/n;->b:Lcom/aggmoread/sdk/z/c/a/a/c/s/a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/a;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/b/n;->d:Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    iput-object v0, p0, Lcom/aggmoread/sdk/b/n;->c:Lcom/aggmoread/sdk/z/c/a/a/c/s/d;

    iget-object v0, p0, Lcom/aggmoread/sdk/b/n;->b:Lcom/aggmoread/sdk/z/c/a/a/c/s/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/s/a;->destroy()V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/aggmoread/sdk/b/n;->d:Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    iget-object p2, p0, Lcom/aggmoread/sdk/b/n;->b:Lcom/aggmoread/sdk/z/c/a/a/c/s/a;

    iget-object v0, p0, Lcom/aggmoread/sdk/b/n;->c:Lcom/aggmoread/sdk/z/c/a/a/c/s/d;

    invoke-interface {p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/c/s/a;->a(Lcom/aggmoread/sdk/z/c/a/a/c/s/d;)V

    iget-object p2, p0, Lcom/aggmoread/sdk/b/n;->b:Lcom/aggmoread/sdk/z/c/a/a/c/s/a;

    invoke-interface {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/c/s/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public show(Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/b/n;->d:Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;

    iget-object p1, p0, Lcom/aggmoread/sdk/b/n;->b:Lcom/aggmoread/sdk/z/c/a/a/c/s/a;

    iget-object v0, p0, Lcom/aggmoread/sdk/b/n;->c:Lcom/aggmoread/sdk/z/c/a/a/c/s/d;

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/c/s/a;->a(Lcom/aggmoread/sdk/z/c/a/a/c/s/d;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/b/n;->b:Lcom/aggmoread/sdk/z/c/a/a/c/s/a;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/s/a;->b()V

    return-void
.end method
