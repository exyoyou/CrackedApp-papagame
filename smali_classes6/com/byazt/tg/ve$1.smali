.class public Lcom/byazt/tg/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/de/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7a4,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tg/ve;->c(Lcom/byazt/dd/tt;ILcom/byazt/tg/x;Lcom/byazt/de/ve;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/tg/ve;

.field public final synthetic c:I

.field public final synthetic n:Lcom/byazt/tg/x;

.field public final synthetic tt:I

.field public final synthetic uj:Lcom/byazt/dd/tt;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/tg/ve;IIILcom/byazt/dd/tt;Lcom/byazt/tg/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tg/ve$1;->a:Lcom/byazt/tg/ve;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/tg/ve$1;->c:I

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/tg/ve$1;->tt:I

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/tg/ve$1;->ve:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/tg/ve$1;->uj:Lcom/byazt/dd/tt;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/tg/ve$1;->n:Lcom/byazt/tg/x;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/byazt/tg/ve;->c(Lcom/byazt/de/uj;)Lcom/byazt/de/uj;

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/tg/ve$1;->a:Lcom/byazt/tg/ve;

    .line 6
    .line 7
    iget v2, p0, Lcom/byazt/tg/ve$1;->c:I

    .line 8
    .line 9
    iget v3, p0, Lcom/byazt/tg/ve$1;->tt:I

    .line 10
    .line 11
    iget v4, p0, Lcom/byazt/tg/ve$1;->ve:I

    .line 12
    .line 13
    iget-object v5, p0, Lcom/byazt/tg/ve$1;->uj:Lcom/byazt/dd/tt;

    .line 14
    .line 15
    const-string v6, "download_percent_cancel"

    .line 16
    .line 17
    const-string v7, "confirm"

    .line 18
    .line 19
    invoke-static/range {v1 .. v7}, Lcom/byazt/tg/ve;->c(Lcom/byazt/tg/ve;IIILcom/byazt/dd/tt;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public tt()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/byazt/tg/ve;->c(Lcom/byazt/de/uj;)Lcom/byazt/de/uj;

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/tg/ve$1;->a:Lcom/byazt/tg/ve;

    .line 6
    .line 7
    iget v2, p0, Lcom/byazt/tg/ve$1;->c:I

    .line 8
    .line 9
    iget v3, p0, Lcom/byazt/tg/ve$1;->tt:I

    .line 10
    .line 11
    iget v4, p0, Lcom/byazt/tg/ve$1;->ve:I

    .line 12
    .line 13
    iget-object v5, p0, Lcom/byazt/tg/ve$1;->uj:Lcom/byazt/dd/tt;

    .line 14
    .line 15
    const-string v6, "download_percent_cancel"

    .line 16
    .line 17
    const-string v7, "cancel"

    .line 18
    .line 19
    invoke-static/range {v1 .. v7}, Lcom/byazt/tg/ve;->c(Lcom/byazt/tg/ve;IIILcom/byazt/dd/tt;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/tg/ve$1;->n:Lcom/byazt/tg/x;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/byazt/tg/ve$1;->uj:Lcom/byazt/dd/tt;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/byazt/tg/x;->c(Lcom/byazt/dd/tt;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
