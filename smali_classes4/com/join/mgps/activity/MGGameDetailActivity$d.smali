.class Lcom/join/mgps/activity/MGGameDetailActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;->followGameNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGGameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$d;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

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
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$d;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->mFavoriteDialog:Lcom/join/mgps/customview/t;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$d;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->mFavoriteDialog:Lcom/join/mgps/customview/t;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$d;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->followGame()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
