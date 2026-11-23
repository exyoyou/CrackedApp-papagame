.class public Lcom/byazt/qqc/ve$1;
.super Lcom/byazt/aas/c$ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x147,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qqc/ve;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qqc/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/qqc/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qqc/ve$1;->c:Lcom/byazt/qqc/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/aas/c$ve;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Landroid/view/Window;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/aas/c$ve;->c(Ljava/lang/String;Landroid/view/Window;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "com.byted.live.lite"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/byazt/qqc/ve$1;->c:Lcom/byazt/qqc/ve;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/byazt/qqc/ve;->c(Lcom/byazt/qqc/ve;)Lcom/byazt/ete/ic;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/byazt/qqc/ve$1;->c:Lcom/byazt/qqc/ve;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/byazt/qqc/ve;->tt(Lcom/byazt/qqc/ve;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1, p2, v0, v1}, Lcom/byazt/qqc/ve;->c(Landroid/view/Window;Lcom/byazt/ete/ic;Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public tt(Ljava/lang/String;Landroid/view/Window;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/aas/c$ve;->tt(Ljava/lang/String;Landroid/view/Window;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "com.byted.live.lite"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/byazt/qqc/ve$1;->c:Lcom/byazt/qqc/ve;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/byazt/qqc/ve;->c(Lcom/byazt/qqc/ve;)Lcom/byazt/ete/ic;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, p2, v0, v1}, Lcom/byazt/qqc/ve;->tt(Landroid/view/Window;Lcom/byazt/ete/ic;Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method
