.class Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/wrapper/SystemUiHiderHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;


# direct methods
.method constructor <init>(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->access$100(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/2addr p1, v0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/papa91/wrapper/SystemUiHider;->mOnVisibilityChangeListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-interface {p1, v0}, Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->access$002(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;Z)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/papa91/wrapper/SystemUiHider;->mAnchorView:Landroid/view/View;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->access$200(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/papa91/wrapper/SystemUiHider;->mOnVisibilityChangeListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-interface {p1, v0}, Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->access$002(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;Z)Z

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method
