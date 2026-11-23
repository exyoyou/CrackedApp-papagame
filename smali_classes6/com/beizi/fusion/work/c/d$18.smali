.class Lcom/beizi/fusion/work/c/d$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/c/d;->f(Lcom/beizi/ad/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/c/d;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/c/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/c/d$18;->a:Lcom/beizi/fusion/work/c/d;

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
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$18;->a:Lcom/beizi/fusion/work/c/d;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->S(Lcom/beizi/fusion/work/c/d;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$18;->a:Lcom/beizi/fusion/work/c/d;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lcom/beizi/fusion/work/c/d;->e(Lcom/beizi/fusion/work/c/d;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$18;->a:Lcom/beizi/fusion/work/c/d;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->T(Lcom/beizi/fusion/work/c/d;)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$18;->a:Lcom/beizi/fusion/work/c/d;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/beizi/fusion/work/c/d;->U(Lcom/beizi/fusion/work/c/d;)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/beizi/fusion/work/c/d$18;->a:Lcom/beizi/fusion/work/c/d;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/beizi/fusion/work/c/d;->V(Lcom/beizi/fusion/work/c/d;)F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$18;->a:Lcom/beizi/fusion/work/c/d;

    .line 46
    .line 47
    invoke-static {v3}, Lcom/beizi/fusion/work/c/d;->W(Lcom/beizi/fusion/work/c/d;)F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    filled-new-array {p1, v1, v2, v3}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$18;->a:Lcom/beizi/fusion/work/c/d;

    .line 60
    .line 61
    invoke-static {v1, p1, v0}, Lcom/beizi/fusion/work/c/d;->a(Lcom/beizi/fusion/work/c/d;[Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$18;->a:Lcom/beizi/fusion/work/c/d;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->X(Lcom/beizi/fusion/work/c/d;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method
