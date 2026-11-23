.class Lcom/join/mgps/activity/GameDetailActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity;->showPopupWindow(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$e;->b:Lcom/join/mgps/activity/GameDetailActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$e;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->mPopWindow:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$e;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->mPopWindow:Landroid/widget/PopupWindow;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$e;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->isShowPoPo:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$e;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 27
    .line 28
    const-string v0, "\u4eb2\uff0c\u8bf7\u6162\u70b9"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method
