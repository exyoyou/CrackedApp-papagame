.class public Lcom/byazt/qw/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d6,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qw/ve;->c(Ljava/lang/String;Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/qw/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/qw/ve;Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qw/ve$2;->ve:Lcom/byazt/qw/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qw/ve$2;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/qw/ve$2;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/qw/ve$2;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/qw/ve$2;->c:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/byazt/qw/ve$2;->ve:Lcom/byazt/qw/ve;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/byazt/qw/ve$2;->tt:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/byazt/qw/ve$2;->c:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v2, v3, v0, v4, v1}, Lcom/byazt/qw/ve;->c(Lcom/byazt/qw/ve;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
