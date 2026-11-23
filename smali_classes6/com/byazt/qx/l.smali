.class public Lcom/byazt/qx/l;
.super Lcom/byazt/pct/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x205
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
.field public c:Lcom/byazt/el/SSWebView;

.field public tt:Ljava/lang/String;

.field public ve:Lcom/byazt/omf/d;


# direct methods
.method public constructor <init>(Lcom/byazt/el/SSWebView;Ljava/lang/String;Lcom/byazt/omf/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/qx/l;->c:Lcom/byazt/el/SSWebView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/qx/l;->tt:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/qx/l;->ve:Lcom/byazt/omf/d;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic c(Lcom/byazt/qx/l;)Lcom/byazt/el/SSWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qx/l;->c:Lcom/byazt/el/SSWebView;

    return-object p0
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/el/SSWebView;Lcom/byazt/omf/d;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/byazt/qx/l;

    const-string v1, "closeWebview"

    invoke-direct {v0, p1, v1, p2}, Lcom/byazt/qx/l;-><init>(Lcom/byazt/el/SSWebView;Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 4
    new-instance v0, Lcom/byazt/qx/l;

    const-string v1, "makeVisible"

    invoke-direct {v0, p1, v1, p2}, Lcom/byazt/qx/l;-><init>(Lcom/byazt/el/SSWebView;Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 5
    new-instance v0, Lcom/byazt/qx/l;

    const-string v1, "getCurrentVisibleState"

    invoke-direct {v0, p1, v1, p2}, Lcom/byazt/qx/l;-><init>(Lcom/byazt/el/SSWebView;Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 6
    new-instance v0, Lcom/byazt/qx/l;

    const-string v1, "changeSize"

    invoke-direct {v0, p1, v1, p2}, Lcom/byazt/qx/l;-><init>(Lcom/byazt/el/SSWebView;Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 7
    new-instance v0, Lcom/byazt/qx/l;

    const-string v1, "changeFrame"

    invoke-direct {v0, p1, v1, p2}, Lcom/byazt/qx/l;-><init>(Lcom/byazt/el/SSWebView;Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/qx/l;)Lcom/byazt/omf/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qx/l;->ve:Lcom/byazt/omf/d;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lcom/byazt/pct/a;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/pct/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/l;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;
    .locals 7
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/pct/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/byazt/qx/l;->tt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "makeVisible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "closeWebview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "getCurrentVisibleState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "changeFrame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "changeSize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    const-string v0, "size"

    const-string v1, "success"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/byazt/qx/l;->c:Lcom/byazt/el/SSWebView;

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 12
    new-instance p1, Lcom/byazt/qx/l$2;

    invoke-direct {p1, p0}, Lcom/byazt/qx/l$2;-><init>(Lcom/byazt/qx/l;)V

    invoke-static {p1}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 13
    :cond_5
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 14
    :pswitch_1
    new-instance p1, Lcom/byazt/qx/l$1;

    invoke-direct {p1, p0}, Lcom/byazt/qx/l$1;-><init>(Lcom/byazt/qx/l;)V

    invoke-static {p1}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 15
    iget-object p1, p0, Lcom/byazt/qx/l;->ve:Lcom/byazt/omf/d;

    invoke-virtual {p1}, Lcom/byazt/omf/d;->ve()Lcom/byazt/sy/i;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 16
    invoke-interface {p1}, Lcom/byazt/sy/i;->tt()V

    .line 17
    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 18
    :cond_6
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    .line 19
    :pswitch_2
    iget-object p1, p0, Lcom/byazt/qx/l;->c:Lcom/byazt/el/SSWebView;

    const/16 v0, 0x32

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;II)Z

    move-result p1

    xor-int/2addr p1, v4

    const-string v0, "visibleState"

    .line 20
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_3
    const-string v1, "point"

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const v0, 0x7fffffff

    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v5, v2, :cond_7

    .line 24
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    .line 25
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    goto :goto_1

    :cond_7
    const v1, 0x7fffffff

    const v5, 0x7fffffff

    :goto_1
    if-eqz p1, :cond_8

    .line 26
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v6, v2, :cond_8

    .line 27
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    .line 28
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result p1

    goto :goto_2

    :cond_8
    const p1, 0x7fffffff

    .line 29
    :goto_2
    iget-object v2, p0, Lcom/byazt/qx/l;->ve:Lcom/byazt/omf/d;

    if-eqz v2, :cond_9

    .line 30
    invoke-virtual {v2, v5, v1, v0, p1}, Lcom/byazt/omf/d;->c(IIII)V

    goto :goto_3

    .line 31
    :pswitch_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 33
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    .line 34
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result p1

    .line 35
    iget-object v1, p0, Lcom/byazt/qx/l;->ve:Lcom/byazt/omf/d;

    if-eqz v1, :cond_9

    .line 36
    invoke-virtual {v1, v0, p1}, Lcom/byazt/omf/d;->c(II)V

    :cond_9
    :goto_3
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f12f02f -> :sswitch_4
        -0x63fe8c63 -> :sswitch_3
        -0x5a6a23de -> :sswitch_2
        -0x731311f -> :sswitch_1
        0x68af9aa4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
