.class Lcom/join/android/app/common/dialog/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/dialog/f;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/common/dialog/f;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/dialog/f;)V
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
    iput-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->b:Lcom/join/android/app/common/dialog/f;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->b:Lcom/join/android/app/common/dialog/f;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/android/app/common/dialog/f;->a(Lcom/join/android/app/common/dialog/f;)Landroid/widget/ImageView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->b:Lcom/join/android/app/common/dialog/f;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/android/app/common/dialog/f;->b(Lcom/join/android/app/common/dialog/f;)Landroid/widget/ImageView;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f08098f

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->b:Lcom/join/android/app/common/dialog/f;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/join/android/app/common/dialog/f;->c(Lcom/join/android/app/common/dialog/f;)Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "\u626b\u63cf\u63d0\u793a"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->b:Lcom/join/android/app/common/dialog/f;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/join/android/app/common/dialog/f;->d(Lcom/join/android/app/common/dialog/f;)Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "\u5982\u518d\u6b21\u9700\u8981\u626b\u63cf\uff0c\u8bf7\u524d\u5f80\u3010\u6211\u7684\u6e38\u620f\u3011\u70b9\u51fb\u672c\u5730\u6e38\u620f\u6309\u94ae\u3002"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->b:Lcom/join/android/app/common/dialog/f;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/android/app/common/dialog/f;->e(Lcom/join/android/app/common/dialog/f;)Landroid/widget/Button;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "\u6211\u77e5\u9053\u4e86"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$b;->b:Lcom/join/android/app/common/dialog/f;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/join/android/app/common/dialog/f;->e(Lcom/join/android/app/common/dialog/f;)Landroid/widget/Button;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v0, Lcom/join/android/app/common/dialog/f$b$a;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/f$b$a;-><init>(Lcom/join/android/app/common/dialog/f$b;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
