.class Lcom/papa91/arc/EmuActivity_psp$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->ShowSetNetWorkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/arc/EmuActivity_psp$17;->lambda$run$0(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget-object v0, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/app/Dialog;

    .line 7
    .line 8
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget v3, Lorg/ppsspp/ppsspp/R$style;->MyDialog:I

    .line 13
    .line 14
    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    .line 18
    .line 19
    sget v2, Lorg/ppsspp/ppsspp/R$layout;->bind_dialog2:I

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    .line 25
    .line 26
    sget v2, Lorg/ppsspp/ppsspp/R$id;->dialog_button_ok:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/Button;

    .line 33
    .line 34
    sget-object v2, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    .line 35
    .line 36
    sget v3, Lorg/ppsspp/ppsspp/R$id;->tip_title:I

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroid/widget/TextView;

    .line 43
    .line 44
    sget-object v3, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    .line 45
    .line 46
    sget v4, Lorg/ppsspp/ppsspp/R$id;->dialog_content:I

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroid/widget/TextView;

    .line 53
    .line 54
    sget-object v4, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    .line 55
    .line 56
    sget v5, Lorg/ppsspp/ppsspp/R$id;->dialog_desci:I

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Landroid/widget/TextView;

    .line 63
    .line 64
    sget-object v5, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    .line 65
    .line 66
    invoke-virtual {v5, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 67
    .line 68
    .line 69
    sget-object v5, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    .line 70
    .line 71
    invoke-virtual {v5, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 72
    .line 73
    .line 74
    const-string v5, "\u63d0\u793a"

    .line 75
    .line 76
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    const-string v2, "\u8bf7\u6821\u9a8c\u4f1a\u5458\u8eab\u4efd\n\u8054\u7f51\u6821\u9a8c\u540e\uff0c\u4f60\u5728\u4e00\u6bb5\u65f6\u95f4\u5185\u53ef\u79bb\u7ebf\u4f7f\u7528\u3002"

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    const/16 v2, 0x8

    .line 85
    .line 86
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    const-string v2, "\u5f00\u542f\u7f51\u7edc"

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    sget-object v2, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    .line 95
    .line 96
    sget v3, Lorg/ppsspp/ppsspp/R$id;->close:I

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    new-instance v3, Lcom/papa91/arc/k;

    .line 103
    .line 104
    invoke-direct {v3}, Lcom/papa91/arc/k;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    new-instance v2, Lcom/papa91/arc/EmuActivity_psp$17$1;

    .line 111
    .line 112
    invoke-direct {v2, p0}, Lcom/papa91/arc/EmuActivity_psp$17$1;-><init>(Lcom/papa91/arc/EmuActivity_psp$17;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    :cond_0
    sput-boolean v1, Lcom/papa91/arc/EmuActivity_psp;->isNet:Z

    .line 119
    .line 120
    sget-object v0, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 123
    .line 124
    .line 125
    return-void
.end method
