.class Lcom/beizi/fusion/c/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/sm/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/c/b;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/c/b;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    .line 17
    iget-object p1, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    invoke-static {p1}, Lcom/beizi/fusion/c/b;->e(Lcom/beizi/fusion/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/beizi/fusion/c/b;->x()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code sm Oaid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__SMOAID__"

    const-string v2, "__OAID__"

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    invoke-static {v0}, Lcom/beizi/fusion/c/b;->d(Lcom/beizi/fusion/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, p1}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    invoke-static {v0}, Lcom/beizi/fusion/c/b;->d(Lcom/beizi/fusion/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    invoke-static {v0}, Lcom/beizi/fusion/c/b;->d(Lcom/beizi/fusion/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/model/RequestInfo;->getDevInfo()Lcom/beizi/fusion/model/DevInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/beizi/fusion/tool/ah;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/beizi/fusion/BeiZis;->isLimitPersonalAds()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    invoke-static {v0}, Lcom/beizi/fusion/c/b;->d(Lcom/beizi/fusion/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/model/RequestInfo;->getDevInfo()Lcom/beizi/fusion/model/DevInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/model/DevInfo;->setOaid(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    invoke-static {v0}, Lcom/beizi/fusion/c/b;->d(Lcom/beizi/fusion/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/model/RequestInfo;->getDevInfo()Lcom/beizi/fusion/model/DevInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/model/DevInfo;->setSmOaid(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "HONOR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    invoke-static {p1}, Lcom/beizi/fusion/c/b;->d(Lcom/beizi/fusion/c/b;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "__HONOROAID__"

    const-string v3, ""

    invoke-static {p1, v0, v3}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    invoke-static {v0}, Lcom/beizi/fusion/c/b;->d(Lcom/beizi/fusion/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, p1}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    invoke-static {v0}, Lcom/beizi/fusion/c/b;->d(Lcom/beizi/fusion/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    invoke-static {v0}, Lcom/beizi/fusion/c/b;->d(Lcom/beizi/fusion/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/model/RequestInfo;->getDevInfo()Lcom/beizi/fusion/model/DevInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/beizi/fusion/tool/ah;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/beizi/fusion/BeiZis;->isLimitPersonalAds()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    invoke-static {v0}, Lcom/beizi/fusion/c/b;->d(Lcom/beizi/fusion/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/model/RequestInfo;->getDevInfo()Lcom/beizi/fusion/model/DevInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/model/DevInfo;->setOaid(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    invoke-static {v0}, Lcom/beizi/fusion/c/b;->d(Lcom/beizi/fusion/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/model/RequestInfo;->getDevInfo()Lcom/beizi/fusion/model/DevInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/model/DevInfo;->setSmOaid(Ljava/lang/String;)V

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/beizi/fusion/c/b$3;->a:Lcom/beizi/fusion/c/b;

    invoke-static {p1}, Lcom/beizi/fusion/c/b;->e(Lcom/beizi/fusion/c/b;)V

    :cond_5
    :goto_0
    return-void
.end method
