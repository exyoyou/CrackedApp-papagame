.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->showLocalKeyboard(Z)Z
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
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$42;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$42;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$StatusType;->STATUS_HIDE:Lcom/haima/hmcp/proto/GSSDK$StatusType;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getIMStatusData(Lcom/haima/hmcp/proto/GSSDK$StatusType;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendEvent([B)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
