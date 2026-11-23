.class public Lcom/byazt/da/c$2;
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
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/da/c;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic n:Ljava/util/List;

.field public final synthetic sp:Lcom/byazt/da/c;

.field public final synthetic tt:Ljava/util/List;

.field public final synthetic uj:Ljava/util/List;

.field public final synthetic ve:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/byazt/da/c;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/da/c$2;->sp:Lcom/byazt/da/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/da/c$2;->c:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/da/c$2;->tt:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/da/c$2;->ve:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/da/c$2;->uj:Ljava/util/List;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/da/c$2;->n:Ljava/util/List;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/da/c$2;->a:Landroid/view/View;

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
    iget-object p1, p0, Lcom/byazt/da/c$2;->sp:Lcom/byazt/da/c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/da/c;->tt(Lcom/byazt/da/c;)Lcom/byazt/yl/ve;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "pangle"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/byazt/da/c$2;->sp:Lcom/byazt/da/c;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/byazt/da/c;->tt(Lcom/byazt/da/c;)Lcom/byazt/yl/ve;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/byazt/da/c$2;->c:Landroid/view/ViewGroup;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/byazt/da/c$2;->tt:Ljava/util/List;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/byazt/da/c$2;->ve:Ljava/util/List;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/byazt/da/c$2;->uj:Ljava/util/List;

    .line 32
    .line 33
    iget-object v5, p0, Lcom/byazt/da/c$2;->n:Ljava/util/List;

    .line 34
    .line 35
    iget-object v6, p0, Lcom/byazt/da/c$2;->a:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/yl/ve;->registerView(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/byazt/da/c$2;->sp:Lcom/byazt/da/c;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/byazt/da/c;->tt(Lcom/byazt/da/c;)Lcom/byazt/yl/ve;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x0

    .line 48
    iget-object v2, p0, Lcom/byazt/da/c$2;->c:Landroid/view/ViewGroup;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/byazt/da/c$2;->ve:Ljava/util/List;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/byazt/da/c$2;->uj:Ljava/util/List;

    .line 53
    .line 54
    iget-object v5, p0, Lcom/byazt/da/c$2;->n:Ljava/util/List;

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    iget-object v7, p0, Lcom/byazt/da/c$2;->tt:Ljava/util/List;

    .line 58
    .line 59
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/yl/ve;->registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/me/da;Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    const/4 p1, 0x0

    .line 63
    return p1
.end method
