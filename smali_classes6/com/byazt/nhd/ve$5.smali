.class public Lcom/byazt/nhd/ve$5;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x153,
        0x186
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nhd/ve;->c(Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/ete/ic;

.field public final synthetic ve:Lcom/byazt/nhd/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/nhd/ve;Ljava/lang/String;ILcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nhd/ve$5;->ve:Lcom/byazt/nhd/ve;

    .line 2
    .line 3
    iput p3, p0, Lcom/byazt/nhd/ve$5;->c:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/nhd/ve$5;->tt:Lcom/byazt/ete/ic;

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
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/nhd/ve$5;->ve:Lcom/byazt/nhd/ve;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/nhd/ve;->c(Lcom/byazt/nhd/ve;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget v2, p0, Lcom/byazt/nhd/ve$5;->c:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/byazt/nhd/ve$5;->tt:Lcom/byazt/ete/ic;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->sf()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/byazt/eti/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    return-void
.end method
