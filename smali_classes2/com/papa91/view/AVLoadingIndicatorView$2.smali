.class Lcom/papa91/view/AVLoadingIndicatorView$2;
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
    iput-object p1, p0, Lcom/papa91/view/AVLoadingIndicatorView$2;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$2;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/papa91/view/AVLoadingIndicatorView;->access$202(Lcom/papa91/view/AVLoadingIndicatorView;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$2;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/view/AVLoadingIndicatorView;->access$300(Lcom/papa91/view/AVLoadingIndicatorView;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$2;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-static {v0, v2, v3}, Lcom/papa91/view/AVLoadingIndicatorView;->access$102(Lcom/papa91/view/AVLoadingIndicatorView;J)J

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/papa91/view/AVLoadingIndicatorView$2;->this$0:Lcom/papa91/view/AVLoadingIndicatorView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/papa91/view/AVLoadingIndicatorView;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
