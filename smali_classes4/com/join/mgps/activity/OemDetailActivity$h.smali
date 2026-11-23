.class Lcom/join/mgps/activity/OemDetailActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/OemDetailActivity;->refreshOem4()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/OemDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/OemDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$h;->b:Lcom/join/mgps/activity/OemDetailActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity$h;->b:Lcom/join/mgps/activity/OemDetailActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/OemDetailActivity;->hasEnoughMoney()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity$h;->b:Lcom/join/mgps/activity/OemDetailActivity;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->P0(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$h;->b:Lcom/join/mgps/activity/OemDetailActivity;

    .line 26
    .line 27
    const-string v0, "\u60a8\u7684\u9285\u677f\u4e0d\u8db3"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/OemDetailActivity;->showToast(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
