.class Lcom/kongzue/dialogx/interfaces/BaseDialog$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/interfaces/BaseDialog$d;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Lcom/kongzue/dialogx/interfaces/BaseDialog$d;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/interfaces/BaseDialog$d;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d$a;->c:Lcom/kongzue/dialogx/interfaces/BaseDialog$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d$a;->b:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d$a;->c:Lcom/kongzue/dialogx/interfaces/BaseDialog$d;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d$a;->c:Lcom/kongzue/dialogx/interfaces/BaseDialog$d;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$d;->a:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->P()Landroid/widget/FrameLayout;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d$a;->c:Lcom/kongzue/dialogx/interfaces/BaseDialog$d;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$d;->b:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, "\u5df2\u5904\u4e8e\u663e\u793a\u72b6\u6001\uff0c\u8bf7\u52ff\u91cd\u590d\u6267\u884c show() \u6307\u4ee4\u3002"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d$a;->c:Lcom/kongzue/dialogx/interfaces/BaseDialog$d;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d;->b:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d$a;->c:Lcom/kongzue/dialogx/interfaces/BaseDialog$d;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d;->b:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/view/ViewGroup;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d$a;->c:Lcom/kongzue/dialogx/interfaces/BaseDialog$d;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$d;->b:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d$a;->b:Landroid/widget/FrameLayout;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d$a;->c:Lcom/kongzue/dialogx/interfaces/BaseDialog$d;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$d;->b:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
