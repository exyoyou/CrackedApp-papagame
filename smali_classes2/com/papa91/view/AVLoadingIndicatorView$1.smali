.class Lcom/papa91/view/AVLoadingIndicatorView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/AVLoadingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/AVLoadingIndicatorView;


# direct methods
.method constructor <init>(Lcom/papa91/view/AVLoadingIndicatorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AVLoadingIndicatorView$1;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$1;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/papa91/view/AVLoadingIndicatorView;->access$002(Lcom/papa91/view/AVLoadingIndicatorView;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$1;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    .line 8
    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/papa91/view/AVLoadingIndicatorView;->access$102(Lcom/papa91/view/AVLoadingIndicatorView;J)J

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$1;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/papa91/view/AVLoadingIndicatorView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
