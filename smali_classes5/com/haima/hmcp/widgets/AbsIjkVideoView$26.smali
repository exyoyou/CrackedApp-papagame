.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->handleClipboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$26;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .locals 2

    .line 1
    const-string v0, "AbsIjkVideoView"

    .line 2
    .line 3
    const-string v1, "clipboard is onPrimaryClipChanged"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$26;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->clipboardManager:Landroid/content/ClipboardManager;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$2700(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Landroid/content/ClipboardManager;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
