.class Lcom/papa91/view/DragProgressView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/DragProgressView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/DragProgressView;


# direct methods
.method constructor <init>(Lcom/papa91/view/DragProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/DragProgressView$1;->this$0:Lcom/papa91/view/DragProgressView;

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
    iget-object v0, p0, Lcom/papa91/view/DragProgressView$1;->this$0:Lcom/papa91/view/DragProgressView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    const/4 v1, -0x2

    .line 10
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 11
    .line 12
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/papa91/view/DragProgressView$1;->this$0:Lcom/papa91/view/DragProgressView;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa91/view/DragProgressView$1;->this$0:Lcom/papa91/view/DragProgressView;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/papa91/view/DragProgressView;->access$000(Lcom/papa91/view/DragProgressView;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/papa91/view/DragProgressView$1;->this$0:Lcom/papa91/view/DragProgressView;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/papa91/view/DragProgressView;->access$000(Lcom/papa91/view/DragProgressView;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/papa91/view/DragProgressView$1$1;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/papa91/view/DragProgressView$1$1;-><init>(Lcom/papa91/view/DragProgressView$1;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
