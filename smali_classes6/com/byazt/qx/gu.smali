.class public Lcom/byazt/qx/gu;
.super Lcom/byazt/pct/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x11
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
.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/omf/d;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/d;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/n;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/qx/gu;->c:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/byazt/qx/gu;->tt:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->mc()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ltz p1, :cond_1

    if-ltz v1, :cond_1

    .line 20
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_1
    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    if-ltz v1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 21
    :goto_1
    invoke-static {p0}, Lcom/byazt/ete/kp;->n(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v0, p1

    :goto_2
    return v0
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/qx/gu;

    const-string v1, "interactiveStart"

    invoke-direct {v0, p1, v1}, Lcom/byazt/qx/gu;-><init>(Lcom/byazt/omf/d;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 3
    new-instance v0, Lcom/byazt/qx/gu;

    const-string v1, "interactiveFinish"

    invoke-direct {v0, p1, v1}, Lcom/byazt/qx/gu;-><init>(Lcom/byazt/omf/d;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 4
    new-instance v0, Lcom/byazt/qx/gu;

    const-string v1, "interactiveEnd"

    invoke-direct {v0, p1, v1}, Lcom/byazt/qx/gu;-><init>(Lcom/byazt/omf/d;Ljava/lang/String;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/gu;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, "reduce_duration"

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/byazt/qx/gu;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/byazt/qx/gu;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/omf/d;

    .line 8
    invoke-virtual {v1}, Lcom/byazt/omf/d;->x()Lcom/byazt/ete/ic;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/byazt/qx/gu;->tt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto :goto_1

    :sswitch_0
    const-string v4, "interactiveFinish"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "interactiveEnd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "interactiveStart"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    :try_start_0
    const-string v3, "finish"

    .line 10
    invoke-virtual {p1, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 11
    :goto_2
    invoke-virtual {p1, p2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 12
    invoke-static {v2, p1}, Lcom/byazt/qx/gu;->c(Lcom/byazt/ete/ic;I)I

    move-result p1

    if-eqz v7, :cond_5

    .line 13
    invoke-virtual {v1, p1}, Lcom/byazt/omf/d;->uj(I)V

    goto :goto_3

    :cond_5
    const/4 v5, -0x1

    :goto_3
    const-string v1, "code"

    .line 14
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 17
    :pswitch_1
    invoke-virtual {v1}, Lcom/byazt/omf/d;->my()V

    goto :goto_4

    .line 18
    :pswitch_2
    invoke-virtual {v1}, Lcom/byazt/omf/d;->rh()V

    :goto_4
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3eeafd60 -> :sswitch_2
        0x2fe23e99 -> :sswitch_1
        0x4ac71615 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
