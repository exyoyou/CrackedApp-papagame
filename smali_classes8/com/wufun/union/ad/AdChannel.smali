.class public abstract Lcom/wufun/union/ad/AdChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufun/union/ad/AdChannel$Type;,
        Lcom/wufun/union/ad/AdChannel$a;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Lcom/wufun/union/ad/AdChannel$Type;

.field protected d:Lcom/wufun/union/ad/AdChannel$a;

.field protected e:Landroid/content/Context;

.field protected f:Z

.field protected g:I

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/wufun/union/ad/AdChannel;->b:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/wufun/union/ad/AdChannel;->f:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Lcom/wufun/union/ad/AdChannel$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/AdChannel;->d:Lcom/wufun/union/ad/AdChannel$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufun/union/ad/AdChannel;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/AdChannel;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract d(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufun/union/ad/AdChannel;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/high16 v0, 0x44870000    # 1080.0f

    .line 2
    .line 3
    const/high16 v1, 0x44f00000    # 1920.0f

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/wufun/union/ad/AdChannel;->h(Ljava/lang/String;FF)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getType()Lcom/wufun/union/ad/AdChannel$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/AdChannel;->c:Lcom/wufun/union/ad/AdChannel$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract h(Ljava/lang/String;FF)V
.end method

.method public i(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "type"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/wufun/union/ad/AdChannel;->c:Lcom/wufun/union/ad/AdChannel$Type;

    .line 9
    .line 10
    iget v2, v2, Lcom/wufun/union/ad/AdChannel$Type;->val:I

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    const-string v1, "event"

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string v1, "result"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string p2, "message"

    .line 34
    .line 35
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/wufun/union/ad/AdChannel;->d:Lcom/wufun/union/ad/AdChannel$a;

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-interface {p2, p1, p3}, Lcom/wufun/union/ad/AdChannel$a;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :cond_0
    :goto_0
    return-void
.end method

.method public j(Lcom/wufun/union/ad/AdChannel$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/AdChannel;->d:Lcom/wufun/union/ad/AdChannel$a;

    .line 2
    .line 3
    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufun/union/ad/AdChannel;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/AdChannel;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public abstract m(Landroid/app/Activity;)V
.end method
