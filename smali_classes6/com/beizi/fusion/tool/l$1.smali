.class Lcom/beizi/fusion/tool/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/tool/l;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/tool/l;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/l$1;->a:Lcom/beizi/fusion/tool/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/beizi/fusion/tool/l$1;->a:Lcom/beizi/fusion/tool/l;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/beizi/fusion/tool/l;->a(Lcom/beizi/fusion/tool/l;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/tool/l$1;->a:Lcom/beizi/fusion/tool/l;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/beizi/fusion/tool/l;->a(Lcom/beizi/fusion/tool/l;)Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_0
    new-instance v0, Lcom/beizi/ad/internal/view/a/a$a;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Lcom/beizi/ad/internal/view/a/a$a;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lcom/beizi/fusion/tool/l$1$1;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/beizi/fusion/tool/l$1$1;-><init>(Lcom/beizi/fusion/tool/l$1;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/beizi/ad/internal/view/a/a$a;->a(Lcom/beizi/ad/internal/view/a/a$b;)Lcom/beizi/ad/internal/view/a/a$a;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/beizi/ad/internal/view/a/a$a;->a()Lcom/beizi/ad/internal/view/a/a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v1, "e \uff1a"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v0, "BeiZis"

    .line 67
    .line 68
    invoke-static {v0, p1}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method
