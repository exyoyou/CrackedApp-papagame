.class Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->showLoadingLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$a;->b:Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$a;->b:Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/customview/LoadingLayout;->h()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
