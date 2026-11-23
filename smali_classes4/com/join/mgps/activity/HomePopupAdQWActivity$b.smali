.class Lcom/join/mgps/activity/HomePopupAdQWActivity$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HomePopupAdQWActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HomePopupAdQWActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdQWActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->e:Lcom/join/mgps/customview/CustomCircleProgressBar;

    .line 20
    .line 21
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/CustomCircleProgressBar;->setProgress(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->r:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->e:Lcom/join/mgps/customview/CustomCircleProgressBar;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/CustomCircleProgressBar;->setProgress(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->h:Landroid/widget/RelativeLayout;

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->u:Lcom/github/snowdream/android/app/downloader/c;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/c;->g()Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->z(Landroid/content/Context;Ljava/io/File;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->e:Lcom/join/mgps/customview/CustomCircleProgressBar;

    .line 76
    .line 77
    const/16 v0, 0x64

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/CustomCircleProgressBar;->setProgress(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->h:Landroid/widget/RelativeLayout;

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->g:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->g:Landroid/widget/TextView;

    .line 99
    .line 100
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b$a;

    .line 101
    .line 102
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$b$a;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$b;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void
.end method
