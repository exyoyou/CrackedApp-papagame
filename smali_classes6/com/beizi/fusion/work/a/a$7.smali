.class Lcom/beizi/fusion/work/a/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/a/a;->aA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/a/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/a/a$7;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Lcom/beizi/fusion/widget/BeiZiAdContainer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/beizi/fusion/widget/BeiZiAdContainer;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$7;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;Landroid/content/Context;Lcom/beizi/fusion/widget/BeiZiAdContainer;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAdLogoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$7;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->o(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$7;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->m(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAppStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$7;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->r(Lcom/beizi/fusion/work/a/a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$7;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->l(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDownloadAppInfo()Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$7;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->p(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getECPM()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$7;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a/a;->i()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    :cond_0
    const/4 v0, -0x1

    .line 15
    return v0
.end method

.method public getExtraInfo()Ljava/util/Map;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$7;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->n(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRewardTaskAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$7;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->i(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$7;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->k(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$7;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->q(Lcom/beizi/fusion/work/a/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setNativeADEventListener(Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$7;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
