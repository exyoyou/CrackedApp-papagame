.class Lcom/papa91/arc/EmuActivity_psp$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;

.field final synthetic val$result:Lcom/papa91/arc/bean/PopwindowBean;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    .line 4
    .line 5
    iput p3, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$type:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Lcom/papa91/arc/EmuActivity_psp$25;Lcom/papa91/arc/bean/PopwindowBean;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp$25;->lambda$run$0(Lcom/papa91/arc/bean/PopwindowBean;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/papa91/arc/bean/PopwindowBean;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const-string v0, "0"

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getStatus()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 16
    .line 17
    const-string p2, "nonageAstrictHint"

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getPopup()Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 p2, 0x1

    .line 52
    if-ne p1, p2, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 55
    .line 56
    const-string p2, "realNameUpWindows"

    .line 57
    .line 58
    invoke-virtual {p1, p2, v0}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa91/arc/EmuActivity_psp;->closeRealNameDialog()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getPopup()Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getType()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v1, v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    .line 32
    .line 33
    iget v2, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$type:I

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lcom/papa91/arc/EmuActivity_psp;->access$1900(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/PopwindowBean;I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x4

    .line 62
    if-ne v0, v1, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 73
    .line 74
    const-string v1, "antiAddtionWindowUp"

    .line 75
    .line 76
    const-string v2, "0"

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 82
    .line 83
    new-instance v1, Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 86
    .line 87
    invoke-direct {v1, v2}, Lcom/papa91/arc/dialog/PerfectWarmDialog;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    iput-object v1, v0, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setData(Lcom/papa91/arc/bean/PopwindowBean;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 104
    .line 105
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$25$1;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$25$1;-><init>(Lcom/papa91/arc/EmuActivity_psp$25;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setListener(Lcom/papa91/arc/interfaces/IDialogListener;)Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$25;->val$result:Lcom/papa91/arc/bean/PopwindowBean;

    .line 118
    .line 119
    new-instance v2, Lcom/papa91/arc/l;

    .line 120
    .line 121
    invoke-direct {v2, p0, v1}, Lcom/papa91/arc/l;-><init>(Lcom/papa91/arc/EmuActivity_psp$25;Lcom/papa91/arc/bean/PopwindowBean;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->show()V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_0
    return-void
.end method
