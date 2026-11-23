.class public Lcom/byazt/da/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x48,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/da/c;->registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/lsp/c;Lcom/byazt/am/uj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/am/uj;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic n:Ljava/util/List;

.field public final synthetic sp:Lcom/byazt/da/c;

.field public final synthetic tt:Landroid/view/ViewGroup;

.field public final synthetic uj:Ljava/util/List;

.field public final synthetic ve:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/byazt/da/c;Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/am/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/da/c$3;->sp:Lcom/byazt/da/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/da/c$3;->c:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/da/c$3;->tt:Landroid/view/ViewGroup;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/da/c$3;->ve:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/da/c$3;->uj:Ljava/util/List;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/da/c$3;->n:Ljava/util/List;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/da/c$3;->a:Lcom/byazt/am/uj;

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
    iget-object p1, p0, Lcom/byazt/da/c$3;->sp:Lcom/byazt/da/c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/da/c;->tt(Lcom/byazt/da/c;)Lcom/byazt/yl/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/da/c$3;->c:Landroid/app/Activity;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/da/c$3;->tt:Landroid/view/ViewGroup;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/byazt/da/c$3;->ve:Ljava/util/List;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/byazt/da/c$3;->uj:Ljava/util/List;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/byazt/da/c$3;->n:Ljava/util/List;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/byazt/da/c$3;->a:Lcom/byazt/am/uj;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/byazt/me/da;->c(Lcom/byazt/am/uj;)Lcom/byazt/me/da;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/yl/ve;->registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/me/da;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return p1
.end method
