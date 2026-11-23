.class Lcom/kongzue/dialogx/dialogs/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/i;->Q3()Lcom/kongzue/dialogx/dialogs/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/i;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$a;->b:Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$a;->b:Lcom/kongzue/dialogx/dialogs/i;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$a;->b:Lcom/kongzue/dialogx/dialogs/i;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$a;->b:Lcom/kongzue/dialogx/dialogs/i;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$a;->b:Lcom/kongzue/dialogx/dialogs/i;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/g;->e([I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$a;->b:Lcom/kongzue/dialogx/dialogs/i;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$a;->b:Lcom/kongzue/dialogx/dialogs/i;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/g;->f([I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$a;->b:Lcom/kongzue/dialogx/dialogs/i;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->T0(Lcom/kongzue/dialogx/dialogs/i;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$a;->b:Lcom/kongzue/dialogx/dialogs/i;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->U0(Lcom/kongzue/dialogx/dialogs/i;)Landroid/view/ViewTreeObserver;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$a;->b:Lcom/kongzue/dialogx/dialogs/i;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->U0(Lcom/kongzue/dialogx/dialogs/i;)Landroid/view/ViewTreeObserver;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v0, v1, p0}, Lcom/kongzue/dialogx/dialogs/i;->g1(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$a;->b:Lcom/kongzue/dialogx/dialogs/i;

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/i;->W0(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$a;->b:Lcom/kongzue/dialogx/dialogs/i;

    .line 88
    .line 89
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/i;->s1(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/ViewTreeObserver$OnDrawListener;)Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    return-void
.end method
