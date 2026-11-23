.class Lcom/join/mgps/Util/UtilsMy$g0;
.super Lm6/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->C0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ZZZLcom/join/mgps/callbacks/x;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/callbacks/x;


# direct methods
.method constructor <init>(Lcom/join/mgps/callbacks/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$callback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$g0;->a:Lcom/join/mgps/callbacks/x;

    .line 2
    .line 3
    invoke-direct {p0}, Lm6/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lm6/e;->a(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$g0;->a:Lcom/join/mgps/callbacks/x;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/join/mgps/callbacks/x;->a(Landroid/app/Activity;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$g0;->a:Lcom/join/mgps/callbacks/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/join/mgps/callbacks/x;->b(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Lm6/e;->b(Landroid/app/Activity;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
