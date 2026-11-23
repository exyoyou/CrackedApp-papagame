.class public Lcom/byazt/hn/ve$5;
.super Lcom/byazt/hn/ve$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x19,
        0x186
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hn/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hn/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/hn/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hn/ve$5;->c:Lcom/byazt/hn/ve;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/hn/ve$c;-><init>(Lcom/byazt/hn/ve$1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hn/ve$5;->c:Lcom/byazt/hn/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/hn/ve;->n(Lcom/byazt/hn/ve;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/hn/ve$5;->c:Lcom/byazt/hn/ve;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lcom/byazt/hn/ve;->c(Lcom/byazt/hn/ve;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/byazt/hn/ve$5;->c:Lcom/byazt/hn/ve;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/byazt/hn/ve;->tt(Lcom/byazt/hn/ve;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hn/ve$5;->c:Lcom/byazt/hn/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/hn/ve;->n(Lcom/byazt/hn/ve;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/hn/ve$5;->c:Lcom/byazt/hn/ve;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {p1, v0}, Lcom/byazt/hn/ve;->c(Lcom/byazt/hn/ve;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/byazt/hn/ve$5;->c:Lcom/byazt/hn/ve;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/byazt/hn/ve;->tt(Lcom/byazt/hn/ve;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
