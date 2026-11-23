.class public Lcom/byazt/yzg/ve$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x308,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yzg/ve;->c(Lcom/byazt/ete/uj;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/av/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/yzg/ve;

.field public final synthetic ve:Lcom/byazt/av/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/yzg/ve;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/av/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yzg/ve$1;->uj:Lcom/byazt/yzg/ve;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/yzg/ve$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/yzg/ve$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/yzg/ve$1;->ve:Lcom/byazt/av/tt;

    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/yzg/ve$1;->uj:Lcom/byazt/yzg/ve;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/ve;)Lcom/byazt/ete/ic;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/byazt/yzg/ve$1;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Lcom/byazt/omf/gu;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/ete/uj;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/byazt/yzg/ve$1;->uj:Lcom/byazt/yzg/ve;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/byazt/yzg/ve$1;->tt:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/byazt/yzg/ve$1;->ve:Lcom/byazt/av/tt;

    .line 22
    .line 23
    invoke-static {v1, v0, v2, v3}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/ve;Lcom/byazt/ete/uj;Ljava/lang/String;Lcom/byazt/av/tt;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
