.class Lcom/join/mgps/activity/DownloadSettingActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DownloadSettingActivity;->autoPlayVideoWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/activity/DownloadSettingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DownloadSettingActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity$a;->c:Lcom/join/mgps/activity/DownloadSettingActivity;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/activity/DownloadSettingActivity$a;->b:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity$a;->c:Lcom/join/mgps/activity/DownloadSettingActivity;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-boolean p2, p0, Lcom/join/mgps/activity/DownloadSettingActivity$a;->b:Z

    .line 11
    .line 12
    xor-int/lit8 p2, p2, 0x1

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/join/mgps/pref/h;->k0(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity$a;->c:Lcom/join/mgps/activity/DownloadSettingActivity;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/activity/DownloadSettingActivity;->autoPlayVideoWifi:Landroid/widget/ImageView;

    .line 20
    .line 21
    const p2, 0x7f0809c6

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
