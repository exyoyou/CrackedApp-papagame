.class Lcom/join/mgps/activity/HomePopupAdQWActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/HomePopupAdQWActivity$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b$a;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity$b;

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
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b$a;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity$b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b$a;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity$b;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->u:Lcom/github/snowdream/android/app/downloader/c;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/c;->g()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->z(Landroid/content/Context;Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
