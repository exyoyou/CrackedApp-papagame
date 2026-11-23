.class public Lcom/byazt/pik/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x387,
        0x14
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Lcom/byazt/pik/uj;


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
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pik/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lcom/byazt/pik/uj;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/pik/c;->ve:Lcom/byazt/pik/uj;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/pik/c;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)Z
    .locals 4

    .line 4
    invoke-virtual {p0}, Lcom/byazt/pik/c;->uj()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {v0}, Lcom/byazt/jze/tt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcom/byazt/kx/c;->c(Ljava/lang/String;)Lcom/byazt/kx/c;

    move-result-object v3

    .line 8
    invoke-virtual {v3, p1}, Lcom/byazt/kx/c;->c(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
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

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u5339\u914dfilter\u5931\u8d25: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TTFeatureAggregate"

    invoke-static {v2, v0, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pik/c;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/pik/c;->tt:Ljava/lang/String;

    return-void
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pik/c;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/pik/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pik/c;->ve:Lcom/byazt/pik/uj;

    return-object v0
.end method

.method public ve(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/pik/c;->uj:Ljava/lang/String;

    return-void
.end method
