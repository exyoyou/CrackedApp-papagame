.class Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/Util/b2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->upload()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinish(Ljava/io/File;Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputFile",
            "outputUri"
        }
    .end annotation

    .line 1
    new-instance p2, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->listTables:Ljava/util/List;

    .line 9
    .line 10
    check-cast v0, Ljava/io/Serializable;

    .line 11
    .line 12
    const-string v1, "datas"

    .line 13
    .line 14
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->context:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->gameId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;->imagepath(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;

    .line 42
    .line 43
    iget-object v2, v0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->listTables:Ljava/util/List;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->getId()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;->typeId(I)Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, v1, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Landroid/os/Bundle;)Lorg/androidannotations/api/builder/e;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;

    .line 70
    .line 71
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 72
    .line 73
    .line 74
    return-void
.end method
