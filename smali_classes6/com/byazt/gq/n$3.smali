.class public Lcom/byazt/gq/n$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gq/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x1fb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gq/n;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:I

.field public final synthetic ve:Lcom/byazt/gq/n;


# direct methods
.method public constructor <init>(Lcom/byazt/gq/n;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gq/n$3;->ve:Lcom/byazt/gq/n;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/gq/n$3;->c:I

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/gq/n$3;->tt:I

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/n$3;->ve:Lcom/byazt/gq/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/gq/n;->a(Lcom/byazt/gq/n;)Lcom/byazt/gq/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/gq/uj;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/gq/n$3;->ve:Lcom/byazt/gq/n;

    .line 15
    .line 16
    iget v1, p0, Lcom/byazt/gq/n$3;->c:I

    .line 17
    .line 18
    iget v2, p0, Lcom/byazt/gq/n$3;->tt:I

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/gq/n;->sp(Lcom/byazt/gq/n;)Lcom/byazt/t/DownloadInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/gq/n;->c(Lcom/byazt/gq/n;IILcom/byazt/t/DownloadInfo;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
