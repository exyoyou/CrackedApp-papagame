.class Lcom/beizi/fusion/tool/l$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/internal/view/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/tool/l$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/tool/l$1;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/l$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/l$1$1;->a:Lcom/beizi/fusion/tool/l$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/tool/l$1$1;->a:Lcom/beizi/fusion/tool/l$1;

    iget-object v0, v0, Lcom/beizi/fusion/tool/l$1;->a:Lcom/beizi/fusion/tool/l;

    invoke-static {v0}, Lcom/beizi/fusion/tool/l;->b(Lcom/beizi/fusion/tool/l;)Lcom/beizi/fusion/tool/l$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/tool/l$1$1;->a:Lcom/beizi/fusion/tool/l$1;

    iget-object v0, v0, Lcom/beizi/fusion/tool/l$1;->a:Lcom/beizi/fusion/tool/l;

    invoke-static {v0}, Lcom/beizi/fusion/tool/l;->b(Lcom/beizi/fusion/tool/l;)Lcom/beizi/fusion/tool/l$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/beizi/fusion/tool/l$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
