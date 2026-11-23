.class public Lcom/byazt/omf/EmptyView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/aas/c$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x9e4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/omf/EmptyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/omf/EmptyView;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/EmptyView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/EmptyView$6;->c:Lcom/byazt/omf/EmptyView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAppBackground()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$6;->c:Lcom/byazt/omf/EmptyView;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->sl(Lcom/byazt/omf/EmptyView;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$6;->c:Lcom/byazt/omf/EmptyView;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {v0, v1}, Lcom/byazt/omf/EmptyView;->c(Lcom/byazt/omf/EmptyView;Z)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$6;->c:Lcom/byazt/omf/EmptyView;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->t(Lcom/byazt/omf/EmptyView;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$6;->c:Lcom/byazt/omf/EmptyView;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->ve(Lcom/byazt/omf/EmptyView;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->tt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$6;->c:Lcom/byazt/omf/EmptyView;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->ve(Lcom/byazt/omf/EmptyView;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/byazt/rgb/uj;->uj(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public onAppExit()V
    .locals 0

    return-void
.end method

.method public onAppForeground()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$6;->c:Lcom/byazt/omf/EmptyView;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->sl(Lcom/byazt/omf/EmptyView;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$6;->c:Lcom/byazt/omf/EmptyView;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->c(Lcom/byazt/omf/EmptyView;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/byazt/omf/EmptyView;->c(Lcom/byazt/omf/EmptyView;Landroid/view/View;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$6;->c:Lcom/byazt/omf/EmptyView;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-static {v0, v1}, Lcom/byazt/omf/EmptyView;->c(Lcom/byazt/omf/EmptyView;Z)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$6;->c:Lcom/byazt/omf/EmptyView;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->t(Lcom/byazt/omf/EmptyView;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$6;->c:Lcom/byazt/omf/EmptyView;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->ve(Lcom/byazt/omf/EmptyView;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->c(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$6;->c:Lcom/byazt/omf/EmptyView;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->ve(Lcom/byazt/omf/EmptyView;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/byazt/rgb/uj;->ve(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public onAppStart()V
    .locals 0

    return-void
.end method
