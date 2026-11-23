.class Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->ChangIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->access$000(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)Landroid/app/Dialog;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    .line 11
    .line 12
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 13
    .line 14
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    .line 30
    .line 31
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 32
    .line 33
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    .line 48
    .line 49
    const-string v0, "android.permission.CAMERA"

    .line 50
    .line 51
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->context:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v1, 0x1

    .line 66
    :goto_0
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->access$100(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)Lcom/join/mgps/Util/b2;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/Util/b2;->g()V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method
