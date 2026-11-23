.class Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$4;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$4;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$500(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "onPageScrollStateChanged = "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$4;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$500(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "onPageScrolled = "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ";"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-static {v0, p3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p3, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$4;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 42
    .line 43
    invoke-static {p3}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$000(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Landroid/widget/FrameLayout$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$4;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$200(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    int-to-float v0, v0

    .line 54
    int-to-float p1, p1

    .line 55
    add-float/2addr p1, p2

    .line 56
    iget-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$4;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const/16 v1, 0x52

    .line 63
    .line 64
    invoke-static {v1, p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->dp2px(ILandroid/content/Context;)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    int-to-float p2, p2

    .line 69
    mul-float p1, p1, p2

    .line 70
    .line 71
    add-float/2addr v0, p1

    .line 72
    float-to-int p1, v0

    .line 73
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 74
    .line 75
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$4;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$300(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$4;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 82
    .line 83
    invoke-static {p2}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$000(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$4;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$500(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "onPageSelected = "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
