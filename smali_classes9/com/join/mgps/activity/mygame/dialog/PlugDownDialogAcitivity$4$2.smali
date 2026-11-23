.class Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->onProgress(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;

.field final synthetic val$progress:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$url",
            "val$progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$2;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$2;->val$url:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$2;->val$progress:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->access$100()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$2;->val$url:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/github/snowdream/android/app/downloader/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$2;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "\u6b63\u5728\u4e0b\u8f7d\uff08"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->c()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, "/"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->e()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ")"

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$2;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 75
    .line 76
    iget v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$2;->val$progress:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void
.end method
