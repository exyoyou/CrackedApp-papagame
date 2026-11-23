.class Lcom/join/android/app/common/view/CollapsibleTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/view/CollapsibleTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/common/view/CollapsibleTextView;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/view/CollapsibleTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->b:Lcom/join/android/app/common/view/CollapsibleTextView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->b:Lcom/join/android/app/common/view/CollapsibleTextView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->a(Lcom/join/android/app/common/view/CollapsibleTextView;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v0, v3, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->b:Lcom/join/android/app/common/view/CollapsibleTextView;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->d(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Lcom/join/android/app/common/view/CollapsibleTextView;->c()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->b:Lcom/join/android/app/common/view/CollapsibleTextView;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->e(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->b:Lcom/join/android/app/common/view/CollapsibleTextView;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->e(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->b:Lcom/join/android/app/common/view/CollapsibleTextView;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/join/android/app/common/view/CollapsibleTextView;->f(Lcom/join/android/app/common/view/CollapsibleTextView;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->b:Lcom/join/android/app/common/view/CollapsibleTextView;

    .line 50
    .line 51
    invoke-static {v0, v2}, Lcom/join/android/app/common/view/CollapsibleTextView;->b(Lcom/join/android/app/common/view/CollapsibleTextView;I)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->b:Lcom/join/android/app/common/view/CollapsibleTextView;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->a(Lcom/join/android/app/common/view/CollapsibleTextView;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-ne v0, v2, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->b:Lcom/join/android/app/common/view/CollapsibleTextView;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->d(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const v2, 0x7fffffff

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->b:Lcom/join/android/app/common/view/CollapsibleTextView;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->e(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->b:Lcom/join/android/app/common/view/CollapsibleTextView;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/join/android/app/common/view/CollapsibleTextView;->e(Lcom/join/android/app/common/view/CollapsibleTextView;)Landroid/widget/TextView;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->b:Lcom/join/android/app/common/view/CollapsibleTextView;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/join/android/app/common/view/CollapsibleTextView;->g(Lcom/join/android/app/common/view/CollapsibleTextView;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/android/app/common/view/CollapsibleTextView$a;->b:Lcom/join/android/app/common/view/CollapsibleTextView;

    .line 100
    .line 101
    invoke-static {v0, v3}, Lcom/join/android/app/common/view/CollapsibleTextView;->b(Lcom/join/android/app/common/view/CollapsibleTextView;I)I

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_0
    return-void
.end method
