.class public Lcom/byazt/dn/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xs/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x23,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dn/c;->c(Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:I

.field public final synthetic ve:Lcom/byazt/dn/c;


# direct methods
.method public constructor <init>(Lcom/byazt/dn/c;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dn/c$1;->ve:Lcom/byazt/dn/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/dn/c$1;->c:I

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/dn/c$1;->tt:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/byazt/dn/c$1;->ve:Lcom/byazt/dn/c;

    invoke-static {v0}, Lcom/byazt/dn/c;->tt(Lcom/byazt/dn/c;)Lcom/byazt/xl/sp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/dn/c$1;->ve:Lcom/byazt/dn/c;

    invoke-static {v0}, Lcom/byazt/dn/c;->tt(Lcom/byazt/dn/c;)Lcom/byazt/xl/sp;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "request fail"

    invoke-interface {v0, v1, v2}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/dn/c$1;->ve:Lcom/byazt/dn/c;

    invoke-static {v0}, Lcom/byazt/dn/c;->c(Lcom/byazt/dn/c;)Lcom/byazt/ete/ic;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/byazt/dn/c$1;->c:I

    iget v3, p0, Lcom/byazt/dn/c$1;->tt:I

    invoke-static {v0, v1, v2, p1, v3}, Lcom/byazt/dn/c;->c(Lcom/byazt/dn/c;Lcom/byazt/ete/ic;Lorg/json/JSONObject;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    nop

    .line 2
    iget-object p1, p0, Lcom/byazt/dn/c$1;->ve:Lcom/byazt/dn/c;

    invoke-static {p1}, Lcom/byazt/dn/c;->tt(Lcom/byazt/dn/c;)Lcom/byazt/xl/sp;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/dn/c$1;->ve:Lcom/byazt/dn/c;

    invoke-static {p1}, Lcom/byazt/dn/c;->tt(Lcom/byazt/dn/c;)Lcom/byazt/xl/sp;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "render fail"

    invoke-interface {p1, v0, v1}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
