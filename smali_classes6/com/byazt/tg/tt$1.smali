.class public Lcom/byazt/tg/tt$1;
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
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tg/tt;->c(Lcom/byazt/dd/tt;ILcom/byazt/tg/x;Lcom/byazt/de/ve;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic n:Lcom/byazt/tg/tt;

.field public final synthetic tt:I

.field public final synthetic uj:Lcom/byazt/tg/x;

.field public final synthetic ve:Lcom/byazt/dd/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/tg/tt;IILcom/byazt/dd/tt;Lcom/byazt/tg/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tg/tt$1;->n:Lcom/byazt/tg/tt;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/tg/tt$1;->c:I

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/tg/tt$1;->tt:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/tg/tt$1;->ve:Lcom/byazt/dd/tt;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/tg/tt$1;->uj:Lcom/byazt/tg/x;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/byazt/tg/tt;->c(Lcom/byazt/de/uj;)Lcom/byazt/de/uj;

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/tg/tt$1;->n:Lcom/byazt/tg/tt;

    .line 6
    .line 7
    iget v2, p0, Lcom/byazt/tg/tt$1;->c:I

    .line 8
    .line 9
    iget v3, p0, Lcom/byazt/tg/tt$1;->tt:I

    .line 10
    .line 11
    iget-object v4, p0, Lcom/byazt/tg/tt$1;->ve:Lcom/byazt/dd/tt;

    .line 12
    .line 13
    const-string v5, "apk_size_cancel"

    .line 14
    .line 15
    const-string v6, "confirm"

    .line 16
    .line 17
    invoke-static/range {v1 .. v6}, Lcom/byazt/tg/tt;->c(Lcom/byazt/tg/tt;IILcom/byazt/dd/tt;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public tt()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/byazt/tg/tt;->c(Lcom/byazt/de/uj;)Lcom/byazt/de/uj;

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/tg/tt$1;->n:Lcom/byazt/tg/tt;

    .line 6
    .line 7
    iget v2, p0, Lcom/byazt/tg/tt$1;->c:I

    .line 8
    .line 9
    iget v3, p0, Lcom/byazt/tg/tt$1;->tt:I

    .line 10
    .line 11
    iget-object v4, p0, Lcom/byazt/tg/tt$1;->ve:Lcom/byazt/dd/tt;

    .line 12
    .line 13
    const-string v5, "apk_size_cancel"

    .line 14
    .line 15
    const-string v6, "cancel"

    .line 16
    .line 17
    invoke-static/range {v1 .. v6}, Lcom/byazt/tg/tt;->c(Lcom/byazt/tg/tt;IILcom/byazt/dd/tt;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/tg/tt$1;->uj:Lcom/byazt/tg/x;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/byazt/tg/tt$1;->ve:Lcom/byazt/dd/tt;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/byazt/tg/x;->c(Lcom/byazt/dd/tt;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
