.class Lcom/join/mgps/Util/g0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/g0;->K(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/join/mgps/dto/CommonGameInfoBean;

.field final synthetic d:Lcom/join/mgps/customview/t;

.field final synthetic e:Lcom/join/mgps/Util/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/customview/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$commonGameInfoBean",
            "val$mDialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/g0$d;->e:Lcom/join/mgps/Util/g0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/g0$d;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/g0$d;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/g0$d;->d:Lcom/join/mgps/customview/t;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/g0$d;->b:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/g0$d;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/Util/g0$d;->d:Lcom/join/mgps/customview/t;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/Util/g0$d;->d:Lcom/join/mgps/customview/t;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
