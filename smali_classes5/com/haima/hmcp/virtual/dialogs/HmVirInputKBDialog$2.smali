.class Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;-><init>(Landroid/content/Context;Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;

.field final synthetic val$baseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$2;->val$baseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getKeys()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->access$000(Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "keys = "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getKeys()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getKeys()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$2;->val$baseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getCode()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-static {v0, v1, p2}, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->access$100(Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;Lcom/haima/hmcp/widgets/AbsIjkVideoView;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method
