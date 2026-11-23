.class public Lcom/byazt/omf/gr$13;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x987
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/gr;->tt(Lcom/byazt/ete/hq;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/omf/gu$ve;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic tt:Lcom/byazt/omf/gu$ve;

.field public final synthetic ve:Lcom/byazt/omf/gr;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/gr;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/byazt/omf/gu$ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/gr$13;->ve:Lcom/byazt/omf/gr;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/gr$13;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/omf/gr$13;->tt:Lcom/byazt/omf/gu$ve;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/omf/gr$13;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/byazt/omf/gr$13;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/byazt/omf/gr$13;->tt:Lcom/byazt/omf/gu$ve;

    const/16 p2, 0x25b

    const-string v0, "response is null!"

    invoke-interface {p1, p2, v0}, Lcom/byazt/omf/gu$ve;->c(ILjava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "message"

    .line 6
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "status"

    const/4 v1, -0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/byazt/omf/gr$13;->tt:Lcom/byazt/omf/gu$ve;

    invoke-interface {p1, v0, p2}, Lcom/byazt/omf/gu$ve;->c(ILjava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "data"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/byazt/omf/gr$13;->tt:Lcom/byazt/omf/gu$ve;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", data is null!"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x25e

    invoke-interface {p1, v0, p2}, Lcom/byazt/omf/gu$ve;->c(ILjava/lang/String;)V

    return-void

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/byazt/omf/gr$13;->tt:Lcom/byazt/omf/gu$ve;

    invoke-interface {p2, p1}, Lcom/byazt/omf/gu$ve;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lcom/byazt/omf/gr$13;->tt:Lcom/byazt/omf/gu$ve;

    const/16 v0, 0x25d

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/byazt/omf/gu$ve;->c(ILjava/lang/String;)V

    return-void

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/byazt/omf/gr$13;->tt:Lcom/byazt/omf/gu$ve;

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->tt()I

    move-result v0

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->ve()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/byazt/omf/gu$ve;->c(ILjava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 1

    .line 14
    iget-object p1, p0, Lcom/byazt/omf/gr$13;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/byazt/omf/gr$13;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    iget-object p1, p0, Lcom/byazt/omf/gr$13;->tt:Lcom/byazt/omf/gu$ve;

    const/16 v0, 0x259

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/byazt/omf/gu$ve;->c(ILjava/lang/String;)V

    return-void
.end method
