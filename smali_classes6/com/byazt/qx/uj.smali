.class public Lcom/byazt/qx/uj;
.super Lcom/byazt/pct/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0xf
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
.field public c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public tt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ve:Lcom/byazt/omf/d;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/n;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/qx/uj;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/qx/uj;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/qx/uj;->ve:Lcom/byazt/omf/d;

    .line 20
    .line 21
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/qx/uj;

    invoke-direct {v0, p1}, Lcom/byazt/qx/uj;-><init>(Lcom/byazt/omf/d;)V

    const-string p1, "businessStatusNotify"

    invoke-virtual {p0, p1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lcom/byazt/pct/a;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/uj;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_0

    return-object p2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/qx/uj;->ve:Lcom/byazt/omf/d;

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    const-string v0, "status"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/byazt/qx/uj;->ve:Lcom/byazt/omf/d;

    invoke-virtual {p1, v1}, Lcom/byazt/omf/d;->a(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const-string v0, "completed"

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "finished"

    .line 8
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, v2, :cond_3

    .line 9
    iget-object v0, p0, Lcom/byazt/qx/uj;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/byazt/qx/uj;->ve:Lcom/byazt/omf/d;

    invoke-virtual {v0, v2}, Lcom/byazt/omf/d;->a(I)V

    :cond_3
    if-ne p1, v2, :cond_4

    .line 11
    iget-object p1, p0, Lcom/byazt/qx/uj;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/byazt/qx/uj;->ve:Lcom/byazt/omf/d;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/byazt/omf/d;->a(I)V

    :cond_4
    :goto_0
    return-object p2
.end method
