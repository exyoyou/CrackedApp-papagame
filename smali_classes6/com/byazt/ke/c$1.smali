.class public Lcom/byazt/ke/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gs/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d3,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ke/c;->tt([BLjava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ke/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ke/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ke/c$1;->c:Lcom/byazt/ke/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/gs/uj;Lcom/byazt/gs/n;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Lcom/byazt/gs/n;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/byazt/gs/n;->tt()Ljava/lang/String;

    iget-object p1, p0, Lcom/byazt/ke/c$1;->c:Lcom/byazt/ke/c;

    invoke-static {p1}, Lcom/byazt/ke/c;->c(Lcom/byazt/ke/c;)Lcom/byazt/vb/n;

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/ke/c$1;->c:Lcom/byazt/ke/c;

    invoke-static {p1}, Lcom/byazt/ke/c;->c(Lcom/byazt/ke/c;)Lcom/byazt/vb/n;

    return-void
.end method

.method public c(Lcom/byazt/gs/uj;Ljava/io/IOException;)V
    .locals 0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    iget-object p1, p0, Lcom/byazt/ke/c$1;->c:Lcom/byazt/ke/c;

    invoke-static {p1}, Lcom/byazt/ke/c;->c(Lcom/byazt/ke/c;)Lcom/byazt/vb/n;

    return-void
.end method
