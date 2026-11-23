.class Lcom/haima/hmcp/widgets/InputEditDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/InputEditDialog;-><init>(Landroid/content/Context;Landroid/view/View$OnKeyListener;Landroid/widget/TextView$OnEditorActionListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/InputEditDialog;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/InputEditDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog$1;->this$0:Lcom/haima/hmcp/widgets/InputEditDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    return-void
.end method

.method public onKeyBoardFlowMode()V
    .locals 0

    return-void
.end method

.method public onKeyBoardHide()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/widgets/InputEditDialog;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "==onKeyBoardHide===="

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public onKeyBoardShowHeight(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
