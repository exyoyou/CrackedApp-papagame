.class public Lcom/byazt/zu/uj$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x397,
        0x80
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zu/uj$3;->registerView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/am/uj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/am/uj;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic n:Ljava/util/List;

.field public final synthetic sp:Lcom/byazt/zu/uj$3;

.field public final synthetic tt:Landroid/view/ViewGroup;

.field public final synthetic uj:Ljava/util/List;

.field public final synthetic ve:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/byazt/zu/uj$3;Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/am/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/uj$3$1;->sp:Lcom/byazt/zu/uj$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/zu/uj$3$1;->c:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/zu/uj$3$1;->tt:Landroid/view/ViewGroup;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/zu/uj$3$1;->ve:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/zu/uj$3$1;->uj:Ljava/util/List;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/zu/uj$3$1;->n:Ljava/util/List;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/zu/uj$3$1;->a:Lcom/byazt/am/uj;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/byazt/zu/uj$3$1;->sp:Lcom/byazt/zu/uj$3;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/byazt/zu/uj$3;->c:Lcom/byazt/zu/uj;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/byazt/zu/uj;->tt(Lcom/byazt/zu/uj;)Lcom/byazt/yl/ve;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/byazt/zu/uj$3$1;->sp:Lcom/byazt/zu/uj$3;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/byazt/zu/uj$3;->c:Lcom/byazt/zu/uj;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/byazt/zu/uj;->tt(Lcom/byazt/zu/uj;)Lcom/byazt/yl/ve;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/byazt/zu/uj$3$1;->c:Landroid/app/Activity;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/byazt/zu/uj$3$1;->tt:Landroid/view/ViewGroup;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/byazt/zu/uj$3$1;->ve:Ljava/util/List;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/byazt/zu/uj$3$1;->uj:Ljava/util/List;

    .line 26
    .line 27
    iget-object v5, p0, Lcom/byazt/zu/uj$3$1;->n:Ljava/util/List;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/byazt/zu/uj$3$1;->a:Lcom/byazt/am/uj;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/byazt/me/da;->c(Lcom/byazt/am/uj;)Lcom/byazt/me/da;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/yl/ve;->registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/me/da;Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    return p1
.end method
