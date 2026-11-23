.class Lcom/haima/hmcp/utils/HmIMEManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/utils/HmIMEManager;->setKeyBoardListener(Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/utils/HmIMEManager;

.field final synthetic val$listener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/utils/HmIMEManager;Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/HmIMEManager$2;->this$0:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/utils/HmIMEManager$2;->val$listener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public keyBoardFlowMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmIMEManager$2;->val$listener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;->onKeyBoardFlowMode()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public keyBoardHide()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmIMEManager$2;->val$listener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;->onKeyBoardHide()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public keyBoardShowHeight(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmIMEManager$2;->val$listener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/utils/HmIMEManager$2;->this$0:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;->onKeyBoardShowHeight(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/HmIMEManager;->access$002(Lcom/haima/hmcp/utils/HmIMEManager;Z)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
