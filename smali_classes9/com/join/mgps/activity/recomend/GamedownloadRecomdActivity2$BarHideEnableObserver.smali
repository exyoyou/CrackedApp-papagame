.class Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2$BarHideEnableObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarHideEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "handler"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2$BarHideEnableObserver;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfChange"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
