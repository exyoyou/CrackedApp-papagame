.class public Lcom/byazt/pik/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x387,
        0x36
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/pik/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public n:F

.field public sp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/pik/tt;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Ljava/lang/String;

.field public uj:Lcom/byazt/pik/n;

.field public ve:Ljava/lang/String;

.field public x:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/pik/tt;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/pik/ve;->sp:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pik/ve;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(F)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/pik/ve;->n:F

    return-void
.end method

.method public c(Lcom/byazt/pik/n;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/pik/ve;->uj:Lcom/byazt/pik/n;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/pik/ve;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/pik/c;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/byazt/pik/ve;->a:Ljava/util/List;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/pik/ve;->x:Z

    return-void
.end method

.method public c(Lorg/json/JSONObject;)Z
    .locals 4

    .line 7
    invoke-virtual {p0}, Lcom/byazt/pik/ve;->tt()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-static {v0}, Lcom/byazt/jze/tt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Lcom/byazt/kx/c;->c(Ljava/lang/String;)Lcom/byazt/kx/c;

    move-result-object v3

    .line 11
    invoke-virtual {v3, p1}, Lcom/byazt/kx/c;->c(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v1

    :catch_0
    move-exception p1

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u5339\u914d\u8fc7\u6ee4\u5668\u5931\u8d25: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TTFeatureRule"

    invoke-static {v2, v0, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/pik/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/pik/ve;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/pik/ve;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pik/ve;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/pik/ve;->tt:Ljava/lang/String;

    return-void
.end method

.method public tt(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/pik/tt;",
            ">;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/byazt/pik/ve;->sp:Ljava/util/List;

    return-void
.end method

.method public uj()Lcom/byazt/pik/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pik/ve;->uj:Lcom/byazt/pik/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pik/ve;->ve:Ljava/lang/String;

    return-object v0
.end method

.method public ve(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/pik/ve;->ve:Ljava/lang/String;

    return-void
.end method
