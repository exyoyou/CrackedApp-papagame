.class Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->ChangIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->access$000(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)Landroid/app/Dialog;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    .line 13
    .line 14
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    .line 34
    .line 35
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 36
    .line 37
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    .line 54
    .line 55
    const-string v0, "android.permission.CAMERA"

    .line 56
    .line 57
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    .line 66
    .line 67
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v1, 0x1

    .line 72
    :goto_0
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->access$100(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)Lcom/join/mgps/Util/b2;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/join/mgps/Util/b2;->g()V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method
