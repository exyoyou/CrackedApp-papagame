.class Lcom/join/mgps/activity/CloudActivity$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity$i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/CloudActivity$i;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity$i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$a;->c:Lcom/join/mgps/activity/CloudActivity$i;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/CloudActivity$i$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$a;->c:Lcom/join/mgps/activity/CloudActivity$i;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity$i;->b:Lcom/join/mgps/activity/CloudActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity;->cloudInfos:Ljava/util/List;

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/activity/CloudActivity$i$a;->b:I

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/CloudInfo;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity$i$a;->c:Lcom/join/mgps/activity/CloudActivity$i;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/join/mgps/activity/CloudActivity$i;->b:Lcom/join/mgps/activity/CloudActivity;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/activity/CloudRomListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CloudRomListActivity_$a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/CloudRomListActivity_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/CloudRomListActivity_$a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 32
    .line 33
    .line 34
    return-void
.end method
