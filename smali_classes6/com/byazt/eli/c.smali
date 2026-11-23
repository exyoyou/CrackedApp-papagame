.class public Lcom/byazt/eli/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5fd,
        0x14
    }
.end annotation


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/byazt/eli/c;->c:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/byazt/eli/c;->c:I

    .line 5
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/byazt/eli/c$1;

    invoke-direct {p2, p0}, Lcom/byazt/eli/c$1;-><init>(Lcom/byazt/eli/c;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/eli/c$2;

    .line 2
    .line 3
    const-string v1, "csj-plugin-check"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/byazt/eli/c$2;-><init>(Lcom/byazt/eli/c;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lcom/byazt/eli/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/eli/c;->a()V

    return-void
.end method

.method private c(Lorg/json/JSONObject;Ljava/lang/String;IZ)V
    .locals 7

    .line 13
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "state"

    const/4 v1, 0x2

    .line 14
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "plugin_v"

    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    .line 16
    invoke-static {p2}, Lcom/byazt/bzd/u;->tt(Ljava/lang/String;)I

    move-result p3

    .line 17
    invoke-static {p2}, Lcom/byazt/bzd/u;->ve(Ljava/lang/String;)I

    move-result v0

    .line 18
    invoke-static {p2}, Lcom/byazt/bzd/u;->n(Ljava/lang/String;)I

    move-result v3

    const-string v4, "api_rule"

    const-string v5, "="

    .line 19
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "plugin_rule"

    .line 20
    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "api_v"

    .line 21
    invoke-virtual {p1, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 22
    invoke-direct {p0, p3, p1, v4}, Lcom/byazt/eli/c;->c(IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p4, :cond_1

    if-le v0, v3, :cond_2

    .line 23
    :cond_1
    invoke-direct {p0, v0, v1, v5}, Lcom/byazt/eli/c;->c(IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24
    invoke-static {p2, v2}, Lcom/byazt/bzd/u;->c(Ljava/lang/String;I)V

    .line 25
    :cond_2
    invoke-static {p2}, Lcom/byazt/bzd/u;->uj(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 27
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p4, v0, :cond_3

    .line 28
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p4, v1, v5}, Lcom/byazt/eli/c;->c(IILjava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 29
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p2, p3}, Lcom/byazt/bzd/u;->c(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    const/4 p1, -0x1

    if-ne v0, p1, :cond_6

    .line 30
    invoke-virtual {p0, p3}, Lcom/byazt/eli/c;->c(I)I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 31
    invoke-static {p2}, Lcom/byazt/bzd/u;->ve(Ljava/lang/String;)I

    move-result p1

    .line 32
    invoke-static {p2}, Lcom/byazt/bzd/u;->n(Ljava/lang/String;)I

    move-result p3

    if-le p1, p3, :cond_6

    .line 33
    invoke-static {p2, v1}, Lcom/byazt/bzd/u;->c(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method private c(IILjava/lang/String;)Z
    .locals 4

    .line 34
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, ">="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "=="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "<="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, ">"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "<"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    if-lt p1, p2, :cond_6

    return v1

    :cond_6
    return v2

    :pswitch_1
    if-gt p1, p2, :cond_7

    return v1

    :cond_7
    return v2

    :pswitch_2
    if-le p1, p2, :cond_8

    return v1

    :cond_8
    return v2

    :pswitch_3
    if-ne p1, p2, :cond_9

    return v1

    :cond_9
    return v2

    :pswitch_4
    if-ge p1, p2, :cond_a

    return v1

    :cond_a
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_5
        0x3d -> :sswitch_4
        0x3e -> :sswitch_3
        0x781 -> :sswitch_2
        0x7a0 -> :sswitch_1
        0x7bf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public c()I
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/byazt/eli/c;->c(I)I

    move-result v0

    return v0
.end method

.method public c(I)I
    .locals 2

    .line 2
    iget v0, p0, Lcom/byazt/eli/c;->c:I

    shr-int p1, v0, p1

    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/byazt/eli/c;->uj()I

    move-result p1

    return p1

    :cond_0
    and-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    neg-int p1, v0

    return p1

    :cond_1
    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "com.byted.live.lite"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->fb()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/byazt/eli/c;->tt()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1

    :cond_1
    const-string v0, "com.byted.csj.ext"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/byazt/eli/c;->ve()I

    move-result p1

    return p1

    :cond_2
    const-string v0, "com.byted.pangle"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/byazt/eli/c;->c()I

    move-result p1

    return p1

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/eli/c;->uj()I

    move-result p1

    return p1
.end method

.method public n()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->nq()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    :try_start_0
    const-string v3, "com.byted.live.lite"

    .line 15
    .line 16
    const/4 v4, 0x4

    .line 17
    invoke-direct {p0, v0, v3, v4, v2}, Lcom/byazt/eli/c;->c(Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    .line 18
    .line 19
    .line 20
    const-string v3, "com.byted.csj.ext"

    .line 21
    .line 22
    const/16 v4, 0x8

    .line 23
    .line 24
    invoke-direct {p0, v0, v3, v4, v2}, Lcom/byazt/eli/c;->c(Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    .line 25
    .line 26
    .line 27
    const-string v3, "com.byted.mixed"

    .line 28
    .line 29
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/byazt/eli/c;->c(Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    .line 30
    .line 31
    .line 32
    const-string v3, "com.byted.pangle"

    .line 33
    .line 34
    invoke-direct {p0, v0, v3, v1, v1}, Lcom/byazt/eli/c;->c(Lorg/json/JSONObject;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    new-array v2, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v0, v2, v1

    .line 42
    .line 43
    const-string v0, "onReceiveServerStatus"

    .line 44
    .line 45
    invoke-static {v0, v2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eli/c;->c:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/eli/c;->c(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public uj()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public ve()I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/byazt/eli/c;->c(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
