.class public Lcom/byazt/qx/qy;
.super Lcom/byazt/pct/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x6e
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/pct/n<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:Lcom/byazt/omf/d;

.field public uj:Lcom/byazt/ete/ic;

.field public ve:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/omf/d;Landroid/content/Context;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/qx/qy;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/qx/qy;->tt:Lcom/byazt/omf/d;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/qx/qy;->ve:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/qx/qy;->uj:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;Landroid/content/Context;Lcom/byazt/ete/ic;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/qx/qy;

    const-string v1, "supportHaptic"

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/byazt/qx/qy;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;Landroid/content/Context;Lcom/byazt/ete/ic;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 3
    new-instance v0, Lcom/byazt/qx/qy;

    const-string v1, "playHaptic"

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/byazt/qx/qy;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;Landroid/content/Context;Lcom/byazt/ete/ic;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 4
    new-instance v0, Lcom/byazt/qx/qy;

    const-string v1, "stopHaptic"

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/byazt/qx/qy;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;Landroid/content/Context;Lcom/byazt/ete/ic;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lcom/byazt/pct/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/qy;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/byazt/qx/qy;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "supportHaptic"

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "playHaptic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "stopHaptic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/byazt/qx/qy;->ve:Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/qx/qy;->uj:Lcom/byazt/ete/ic;

    invoke-static {p1, v0, v1}, Lcom/byazt/fx/ve;->c(Lorg/json/JSONObject;Landroid/content/Context;Lcom/byazt/ete/ic;)V

    goto :goto_1

    .line 8
    :pswitch_1
    iget-object p1, p0, Lcom/byazt/qx/qy;->ve:Landroid/content/Context;

    if-eqz p1, :cond_3

    .line 9
    invoke-static {p1}, Lcom/byazt/fx/ve;->c(Landroid/content/Context;)Z

    move-result v3

    .line 10
    :cond_3
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 11
    :pswitch_2
    iget-object p1, p0, Lcom/byazt/qx/qy;->ve:Landroid/content/Context;

    if-eqz p1, :cond_4

    .line 12
    invoke-static {p1}, Lcom/byazt/fx/ve;->tt(Landroid/content/Context;)V

    :cond_4
    :goto_1
    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x643b02c7 -> :sswitch_2
        -0x4e1658ba -> :sswitch_1
        0x4a8cd2eb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
