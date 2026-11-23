.class Lcom/haima/hmcp/widgets/view/EditTextPreIme$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/view/EditTextPreIme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$1;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

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
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$1;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->access$600(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$1;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->access$300(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;->onKeyBoardHide()Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$1;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->access$302(Lcom/haima/hmcp/widgets/view/EditTextPreIme;Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$1;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->access$202(Lcom/haima/hmcp/widgets/view/EditTextPreIme;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-static {}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->access$100()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "isRealHide() Exception:"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method
