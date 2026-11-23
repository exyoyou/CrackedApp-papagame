.class Lcom/beizi/ad/internal/view/a/a$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/internal/view/a/a$a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/beizi/ad/internal/view/a/a$a;


# direct methods
.method constructor <init>(Lcom/beizi/ad/internal/view/a/a$a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/internal/view/a/a$a$3;->b:Lcom/beizi/ad/internal/view/a/a$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/ad/internal/view/a/a$a$3;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/beizi/ad/internal/view/a/a$a$3;->b:Lcom/beizi/ad/internal/view/a/a$a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/beizi/ad/internal/view/a/a$a;->b(Lcom/beizi/ad/internal/view/a/a$a;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/beizi/ad/internal/view/a/a$a$3;->b:Lcom/beizi/ad/internal/view/a/a$a;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lcom/beizi/ad/internal/view/a/a$a;->a(Lcom/beizi/ad/internal/view/a/a$a;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/beizi/ad/internal/view/a/a$a$3;->b:Lcom/beizi/ad/internal/view/a/a$a;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/beizi/ad/internal/view/a/a$a$3;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/beizi/ad/internal/view/a/a$a;->a(Lcom/beizi/ad/internal/view/a/a$a;)Landroid/widget/EditText;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {p1, v0, v1}, Lcom/beizi/ad/internal/view/a/a$a;->a(Lcom/beizi/ad/internal/view/a/a$a;Landroid/content/Context;Landroid/widget/EditText;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/beizi/ad/internal/view/a/a$a$3;->b:Lcom/beizi/ad/internal/view/a/a$a;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/beizi/ad/internal/view/a/a$a;->c(Lcom/beizi/ad/internal/view/a/a$a;)Lcom/beizi/ad/internal/view/a/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/beizi/ad/internal/view/a/a$a$3;->b:Lcom/beizi/ad/internal/view/a/a$a;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/beizi/ad/internal/view/a/a$a;->c(Lcom/beizi/ad/internal/view/a/a$a;)Lcom/beizi/ad/internal/view/a/a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Lcom/beizi/ad/internal/view/a/a$a$3;->b:Lcom/beizi/ad/internal/view/a/a$a;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/beizi/ad/internal/view/a/a$a;->d(Lcom/beizi/ad/internal/view/a/a$a;)Lcom/beizi/ad/internal/view/a/a$b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lcom/beizi/ad/internal/view/a/a$a$3;->b:Lcom/beizi/ad/internal/view/a/a$a;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/beizi/ad/internal/view/a/a$a;->d(Lcom/beizi/ad/internal/view/a/a$a;)Lcom/beizi/ad/internal/view/a/a$b;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p1}, Lcom/beizi/ad/internal/view/a/a$b;->a()V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void
.end method
