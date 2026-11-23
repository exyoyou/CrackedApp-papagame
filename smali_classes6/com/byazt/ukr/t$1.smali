.class public Lcom/byazt/ukr/t$1;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0xa7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ukr/t;->c(Lcom/byazt/gs/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gs/ve;

.field public final synthetic tt:Lcom/byazt/ukr/t;


# direct methods
.method public constructor <init>(Lcom/byazt/ukr/t;Lcom/byazt/gs/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ukr/t$1;->tt:Lcom/byazt/ukr/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ukr/t$1;->c:Lcom/byazt/gs/ve;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ukr/t$1;->c:Lcom/byazt/gs/ve;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/byazt/ukr/a;

    invoke-direct {v0, p1}, Lcom/byazt/ukr/a;-><init>(Lcom/byazt/va/uj;)V

    .line 3
    new-instance p1, Lcom/byazt/ukr/sp;

    invoke-direct {p1, p2}, Lcom/byazt/ukr/sp;-><init>(Lcom/byazt/hm/tt;)V

    .line 4
    iget-object p2, p0, Lcom/byazt/ukr/t$1;->c:Lcom/byazt/gs/ve;

    invoke-interface {p2, v0, p1}, Lcom/byazt/gs/ve;->c(Lcom/byazt/gs/uj;Lcom/byazt/gs/n;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/ukr/t$1;->c:Lcom/byazt/gs/ve;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/byazt/ukr/a;

    invoke-direct {v0, p1}, Lcom/byazt/ukr/a;-><init>(Lcom/byazt/va/uj;)V

    .line 7
    iget-object p1, p0, Lcom/byazt/ukr/t$1;->c:Lcom/byazt/gs/ve;

    invoke-interface {p1, v0, p2}, Lcom/byazt/gs/ve;->c(Lcom/byazt/gs/uj;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method
