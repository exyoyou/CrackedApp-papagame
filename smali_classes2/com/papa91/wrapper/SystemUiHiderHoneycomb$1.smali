.class Lcom/papa91/wrapper/SystemUiHiderHoneycomb$1;
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
    iput-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$1;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

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
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$1;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/papa91/wrapper/SystemUiHider;->mOnVisibilityChangeListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$1;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->access$002(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;Z)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
