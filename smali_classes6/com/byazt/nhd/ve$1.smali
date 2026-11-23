.class public Lcom/byazt/nhd/ve$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x153,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nhd/ve;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dj/tt;

.field public final synthetic tt:Lcom/byazt/ete/ic;

.field public final synthetic ve:Lcom/byazt/nhd/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/nhd/ve;Ljava/lang/String;Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nhd/ve$1;->ve:Lcom/byazt/nhd/ve;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/nhd/ve$1;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/nhd/ve$1;->tt:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/nhd/ve$1;->ve:Lcom/byazt/nhd/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/nhd/ve;->c(Lcom/byazt/nhd/ve;)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/nhd/ve$1;->c:Lcom/byazt/dj/tt;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/nhd/ve$1;->ve:Lcom/byazt/nhd/ve;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/nhd/ve;->c(Lcom/byazt/nhd/ve;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/byazt/nhd/ve$1;->c:Lcom/byazt/dj/tt;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/byazt/nhd/ve$1;->tt:Lcom/byazt/ete/ic;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/eti/n;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
