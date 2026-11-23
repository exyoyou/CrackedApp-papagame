.class Lcom/beizi/fusion/work/g/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/g/b;->aC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/g/b;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/g/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/g/b$1;->a:Lcom/beizi/fusion/work/g/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBeiZiUnifiedCustomAd onAdFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b$1;->a:Lcom/beizi/fusion/work/g/b;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/work/g/b;->a(Lcom/beizi/fusion/work/g/b;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/beizi/ad/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b$1;->a:Lcom/beizi/fusion/work/g/b;

    sget-object v1, Lcom/beizi/fusion/e/a;->b:Lcom/beizi/fusion/e/a;

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/g/b;->a(Lcom/beizi/fusion/work/g/b;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b$1;->a:Lcom/beizi/fusion/work/g/b;

    invoke-static {v0}, Lcom/beizi/fusion/work/g/b;->a(Lcom/beizi/fusion/work/g/b;)Lcom/beizi/ad/v2/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/g/b;->a(Lcom/beizi/fusion/work/g/b;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b$1;->a:Lcom/beizi/fusion/work/g/b;

    invoke-static {v0}, Lcom/beizi/fusion/work/g/b;->a(Lcom/beizi/fusion/work/g/b;)Lcom/beizi/ad/v2/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b$1;->a:Lcom/beizi/fusion/work/g/b;

    invoke-static {v0}, Lcom/beizi/fusion/work/g/b;->a(Lcom/beizi/fusion/work/g/b;)Lcom/beizi/ad/v2/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/g/b;->a(Lcom/beizi/fusion/work/g/b;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b$1;->a:Lcom/beizi/fusion/work/g/b;

    invoke-static {v0}, Lcom/beizi/fusion/work/g/b;->b(Lcom/beizi/fusion/work/g/b;)V

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/beizi/fusion/work/g/b$1;->a:Lcom/beizi/fusion/work/g/b;

    const/16 v0, -0x3df

    invoke-static {p1, v0}, Lcom/beizi/fusion/work/g/b;->a(Lcom/beizi/fusion/work/g/b;I)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b$1;->a:Lcom/beizi/fusion/work/g/b;

    invoke-static {v0, p1}, Lcom/beizi/fusion/work/g/b;->a(Lcom/beizi/fusion/work/g/b;Lcom/beizi/ad/e;)Lcom/beizi/ad/e;

    .line 9
    iget-object p1, p0, Lcom/beizi/fusion/work/g/b$1;->a:Lcom/beizi/fusion/work/g/b;

    invoke-virtual {p1}, Lcom/beizi/fusion/work/g/a;->aF()V

    return-void
.end method
