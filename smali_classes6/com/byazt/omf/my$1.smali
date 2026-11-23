.class public Lcom/byazt/omf/my$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0xeb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/my;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/omf/my;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/my;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/my$1;->c:Lcom/byazt/omf/my;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/my$1;->c:Lcom/byazt/omf/my;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/omf/my;->c(Lcom/byazt/omf/my;)Lcom/byazt/pop/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/omf/my$1;->c:Lcom/byazt/omf/my;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/omf/my;->tt(Lcom/byazt/omf/my;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/byazt/omf/my$1;->c:Lcom/byazt/omf/my;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/byazt/omf/my$1;->c:Lcom/byazt/omf/my;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/byazt/omf/my;->uj(Lcom/byazt/omf/my;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v1, v2, v3}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/byazt/omf/my;->c(Lcom/byazt/omf/my;Lcom/byazt/pop/ve;)Lcom/byazt/pop/ve;

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/my$1;->c:Lcom/byazt/omf/my;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/byazt/omf/my;->c(Lcom/byazt/omf/my;)Lcom/byazt/pop/ve;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/byazt/omf/my$1;->c:Lcom/byazt/omf/my;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/byazt/omf/my;->n(Lcom/byazt/omf/my;)Landroid/app/Activity;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-interface {v0, v1, v2}, Lcom/byazt/pop/ve;->c(Landroid/app/Activity;Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/byazt/omf/my$1;->c:Lcom/byazt/omf/my;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/byazt/omf/my;->a(Lcom/byazt/omf/my;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
