.class Lcom/join/mgps/activity/ShareWebActivity$n$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$n;->showShareButn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/ShareWebActivity$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$n;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$l;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$n$l;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$l;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$l;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity;->layout_share:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$l;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity;->layout_share:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$n$l$a;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$n$l$a;-><init>(Lcom/join/mgps/activity/ShareWebActivity$n$l;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$l;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity;->layout_share:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
