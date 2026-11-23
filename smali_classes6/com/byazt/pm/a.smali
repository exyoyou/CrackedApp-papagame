.class public Lcom/byazt/pm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x54b,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/pm/a$c;
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/pm/a$c;

.field public tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/pm/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public uj:I

.field public ve:Z


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
    iput-boolean v0, p0, Lcom/byazt/pm/a;->ve:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/pm/a;->uj:I

    .line 8
    .line 9
    return-void
.end method

.method public static c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/byazt/pm/a;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lcom/byazt/pm/a;

    invoke-direct {v1}, Lcom/byazt/pm/a;-><init>()V

    const-string v2, "on"

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "handlers"

    .line 4
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 5
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 6
    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/byazt/pm/t;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/byazt/pm/a$c;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_1
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 8
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2, p1}, Lcom/byazt/pm/t;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/byazt/pm/a$c;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_3

    .line 9
    iput-object v2, v1, Lcom/byazt/pm/a;->c:Lcom/byazt/pm/a$c;

    :cond_3
    if-eqz v3, :cond_a

    .line 10
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 12
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 13
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    .line 14
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 15
    check-cast v5, Ljava/lang/String;

    .line 16
    invoke-static {v5, p1}, Lcom/byazt/pm/t;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/byazt/pm/a$c;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 17
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_5
    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_6

    .line 19
    check-cast v5, Lorg/json/JSONObject;

    .line 20
    invoke-static {v5, p1}, Lcom/byazt/pm/t;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/byazt/pm/a$c;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 21
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 22
    :cond_7
    iput-object v0, v1, Lcom/byazt/pm/a;->tt:Ljava/util/List;

    const-string v0, "delay"

    .line 23
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 24
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/byazt/pm/a;->uj:I

    :cond_8
    const-string v0, "disable"

    .line 26
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 27
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-static {p0, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v1, Lcom/byazt/pm/a;->ve:Z

    :cond_9
    return-object v1

    :cond_a
    :goto_3
    return-object v0
.end method


# virtual methods
.method public c()Lcom/byazt/pm/a$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pm/a;->c:Lcom/byazt/pm/a$c;

    return-object v0
.end method

.method public tt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/pm/a$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/pm/a;->tt:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/pm/a;->uj:I

    .line 2
    .line 3
    return v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/pm/a;->ve:Z

    .line 2
    .line 3
    return v0
.end method
