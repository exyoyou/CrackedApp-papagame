.class Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$4;
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
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$4;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$4;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$4;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$4;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$4;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$4;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

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
    const/4 v1, 0x1

    .line 52
    :goto_0
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$4;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->access$100(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)Lcom/join/mgps/Util/b2;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/Util/b2;->d()V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method
