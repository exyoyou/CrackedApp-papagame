.class Lcom/join/mgps/activity/GameMainActivity4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity4;->mask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameMainActivity4;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity4;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$a;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$a;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity4;->mask:Landroid/view/View;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$a;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity4;->friendContainer:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$a;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity4;->expandContainer:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
