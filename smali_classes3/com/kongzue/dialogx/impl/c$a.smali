.class Lcom/kongzue/dialogx/impl/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/impl/c;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/kongzue/dialogx/impl/c;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/impl/c;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/impl/c$a;->c:Lcom/kongzue/dialogx/impl/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/impl/c$a;->b:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Q()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/kongzue/dialogx/impl/c$a;->b:Landroid/app/Activity;

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/kongzue/dialogx/impl/c$a;->c:Lcom/kongzue/dialogx/impl/c;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/kongzue/dialogx/impl/c;->M(Lcom/kongzue/dialogx/impl/c;)Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eq v0, v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->A()Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/kongzue/dialogx/impl/c$a;->c:Lcom/kongzue/dialogx/impl/c;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/kongzue/dialogx/impl/c;->M(Lcom/kongzue/dialogx/impl/c;)Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->A()Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-ne v1, v2, :cond_0

    .line 52
    .line 53
    instance-of v1, v0, Lcom/kongzue/dialogx/interfaces/o;

    .line 54
    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v1, "onTouch: dialog="

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, "  baseDialog="

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/kongzue/dialogx/impl/c$a;->c:Lcom/kongzue/dialogx/impl/c;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/kongzue/dialogx/impl/c;->M(Lcom/kongzue/dialogx/impl/c;)Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x1

    .line 98
    return p1

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/impl/c$a;->c:Lcom/kongzue/dialogx/impl/c;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/kongzue/dialogx/impl/c;->M(Lcom/kongzue/dialogx/impl/c;)Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    instance-of p1, p1, Lcom/kongzue/dialogx/interfaces/o;

    .line 106
    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    iget-object p1, p0, Lcom/kongzue/dialogx/impl/c$a;->b:Landroid/app/Activity;

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    return p1

    .line 116
    :cond_2
    const/4 p1, 0x0

    .line 117
    return p1
.end method
